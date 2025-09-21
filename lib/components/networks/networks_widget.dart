import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'networks_model.dart';
export 'networks_model.dart';

class NetworksWidget extends StatefulWidget {
  const NetworksWidget({super.key});

  @override
  State<NetworksWidget> createState() => _NetworksWidgetState();
}

class _NetworksWidgetState extends State<NetworksWidget> {
  late NetworksModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NetworksModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: FFAppState().selectedNetwork == 'MTN'
                    ? FlutterFlowTheme.of(context).primary
                    : Colors.transparent,
                width: 5.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().selectedNetwork = 'MTN';
                  _model.updatePage(() {});
                  FFAppState().selectedNetwork = 'MTN';
                  _model.updatePage(() {});
                },
                child: Material(
                  color: Colors.transparent,
                  elevation: FFAppState().selectedNetwork == 'MTN' ? 2.0 : 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/mtn.png',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FFAppState().selectedNetwork == 'MTN'
                            ? FlutterFlowTheme.of(context).primary
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: FFAppState().selectedNetwork == 'GLO'
                    ? FlutterFlowTheme.of(context).primary
                    : Colors.transparent,
                width: 5.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().selectedNetwork = 'MTN';
                  _model.updatePage(() {});
                  FFAppState().selectedNetwork = 'GLO';
                  _model.updatePage(() {});
                },
                child: Material(
                  color: Colors.transparent,
                  elevation: FFAppState().selectedNetwork == 'GLO' ? 2.0 : 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/glo.jpeg',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FFAppState().selectedNetwork == 'GLO'
                            ? FlutterFlowTheme.of(context).primary
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: FFAppState().selectedNetwork == 'AIRTEL'
                    ? FlutterFlowTheme.of(context).primary
                    : Colors.transparent,
                width: 5.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().selectedNetwork = 'MTN';
                  _model.updatePage(() {});
                  FFAppState().selectedNetwork = 'AIRTEL';
                  _model.updatePage(() {});
                },
                child: Material(
                  color: Colors.transparent,
                  elevation:
                      FFAppState().selectedNetwork == 'AIRTEL' ? 2.0 : 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/airtel.png',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FFAppState().selectedNetwork == 'AIRTEL'
                            ? FlutterFlowTheme.of(context).primary
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: FFAppState().selectedNetwork == '9MOBILE'
                    ? FlutterFlowTheme.of(context).primary
                    : Colors.transparent,
                width: 5.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().selectedNetwork = 'MTN';
                  _model.updatePage(() {});
                  FFAppState().selectedNetwork = '9MOBILE';
                  _model.updatePage(() {});
                },
                child: Material(
                  color: Colors.transparent,
                  elevation: FFAppState().selectedNetwork == 'GLO' ? 2.0 : 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/9mobile.jpeg',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FFAppState().selectedNetwork == '9MOBILE'
                            ? FlutterFlowTheme.of(context).primary
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
