import '/components/dia_selecionado_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dias_semana_model.dart';
export 'dias_semana_model.dart';

class DiasSemanaWidget extends StatefulWidget {
  const DiasSemanaWidget({Key? key}) : super(key: key);

  @override
  _DiasSemanaWidgetState createState() => _DiasSemanaWidgetState();
}

class _DiasSemanaWidgetState extends State<DiasSemanaWidget>
    with TickerProviderStateMixin {
  late DiasSemanaModel _model;

  final animationsMap = {
    'rowOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiasSemanaModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) {
        final diasSemana =
            functions.diasDaSemana(FFAppState().dataSelecionada).toList();
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(diasSemana.length, (diasSemanaIndex) {
            final diasSemanaItem = diasSemana[diasSemanaIndex];
            return InkWell(
              onTap: () async {
                if (diasSemanaItem != FFAppState().dataSelecionada) {
                  setState(() {
                    FFAppState().dataSelecionada = diasSemanaItem;
                    FFAppState().diaFiltro = getJsonField(
                      functions.detalhesData(diasSemanaItem),
                      r'''$.diasemana''',
                    ).toString();
                  });
                }
              },
              child: DiaSelecionadoWidget(
                key: Key('Keycmy_${diasSemanaIndex}_of_${diasSemana.length}'),
                diaNumero: getJsonField(
                  functions.detalhesData(diasSemanaItem),
                  r'''$.dianumero''',
                ),
                diaSemana: getJsonField(
                  functions.detalhesData(diasSemanaItem),
                  r'''$.diasemana''',
                ).toString(),
                selecionado: diasSemanaItem == FFAppState().dataSelecionada,
              ),
            );
          }),
        ).animateOnActionTrigger(
          animationsMap['rowOnActionTriggerAnimation']!,
        );
      },
    );
  }
}
