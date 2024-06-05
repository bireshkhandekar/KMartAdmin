import '/backend/api_requests/api_calls.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/topbar/topbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'report_page_model.dart';
export 'report_page_model.dart';

class ReportPageWidget extends StatefulWidget {
  const ReportPageWidget({super.key});

  @override
  State<ReportPageWidget> createState() => _ReportPageWidgetState();
}

class _ReportPageWidgetState extends State<ReportPageWidget>
    with TickerProviderStateMixin {
  late ReportPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'reportPage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.sidebarModel,
                        updateCallback: () => setState(() {}),
                        child: const SidebarWidget(
                          pageName: 'billPage',
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.88,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.topbarModel,
                                  updateCallback: () => setState(() {}),
                                  child: const TopbarWidget(
                                    pageName: 'Reports',
                                    count: 5,
                                    tableName: 'types reports',
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.88,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.916,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(-1.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMediumFamily),
                                                          ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMediumFamily),
                                                          ),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                  padding: const EdgeInsets.all(4.0),
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Products',
                                                    ),
                                                    Tab(
                                                      text: 'Sales',
                                                    ),
                                                    Tab(
                                                      text: 'Transaction ',
                                                    ),
                                                    Tab(
                                                      text: 'Subscriptions',
                                                    ),
                                                    Tab(
                                                      text: 'Orders',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  children: [
                                                    FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: KMartApiGroup
                                                          .reportProductCall
                                                          .call(
                                                        limit: 10,
                                                        pageNo:
                                                            _model.productPage,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final stackReportProductResponse =
                                                            snapshot.data!;
                                                        return SizedBox(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        150.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  height: 45.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(8.0),
                                                                                      topRight: Radius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.05,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Id',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.15,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Name',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Wright',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'MRP',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Discount',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Price',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Quantity',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Category Id',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Status',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Builder(
                                                                                  builder: (context) {
                                                                                    final product = KMartApiGroup.reportProductCall
                                                                                            .product(
                                                                                              stackReportProductResponse.jsonBody,
                                                                                            )
                                                                                            ?.toList() ??
                                                                                        [];
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      primary: false,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: product.length,
                                                                                      itemBuilder: (context, productIndex) {
                                                                                        final productItem = product[productIndex];
                                                                                        return Container(
                                                                                          height: 35.0,
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.05,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productItem,
                                                                                                      r'''$.id''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.15,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      productItem,
                                                                                                      r'''$.name''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        productItem,
                                                                                                        r'''$.weight''',
                                                                                                      ).toString(),
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '₹ ${getJsonField(
                                                                                                        productItem,
                                                                                                        r'''$.mrp''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '₹ ${getJsonField(
                                                                                                        productItem,
                                                                                                        r'''$.discount_amount''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '₹ ${getJsonField(
                                                                                                        productItem,
                                                                                                        r'''$.price''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      'None',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        productItem,
                                                                                                        r'''$.category_id''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                                      ),
                                                                                                      child: Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                                                                                                        child: Text(
                                                                                                          true ==
                                                                                                                  getJsonField(
                                                                                                                    productItem,
                                                                                                                    r'''$.is_active''',
                                                                                                                  )
                                                                                                              ? 'Available'
                                                                                                              : 'Not Available',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                color: true ==
                                                                                                                        getJsonField(
                                                                                                                          productItem,
                                                                                                                          r'''$.is_active''',
                                                                                                                        )
                                                                                                                    ? FlutterFlowTheme.of(context).secondary
                                                                                                                    : FlutterFlowTheme.of(context).error,
                                                                                                                fontSize: 15.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            48.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child:
                                                                    Container(
                                                                  height: 150.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () {
                                                                                print('Button pressed ...');
                                                                              },
                                                                              text: 'Print',
                                                                              icon: const Icon(
                                                                                Icons.print_outlined,
                                                                                size: 24.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              showLoadingIndicator: false,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 8.0),
                                                                              child: Container(
                                                                                width: 250.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            'Available Product :',
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              stackReportProductResponse.jsonBody,
                                                                                              r'''$.active_count''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              'Not Available Product :',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              '+ ${getJsonField(
                                                                                                stackReportProductResponse.jsonBody,
                                                                                                r'''$.inactive_count''',
                                                                                              ).toString()}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            'Total Product :',
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              stackReportProductResponse.jsonBody,
                                                                                              r'''$.total_products_count''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            const Expanded(
                                                                              flex: 5,
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [],
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 5,
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: [
                                                                                  Text(
                                                                                    'Rows per page : 10',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Total : ${getJsonField(
                                                                                      stackReportProductResponse.jsonBody,
                                                                                      r'''$.total_products_count''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Page No : ${getJsonField(
                                                                                      stackReportProductResponse.jsonBody,
                                                                                      r'''$.current_page''',
                                                                                    ).toString()} of ${getJsonField(
                                                                                      stackReportProductResponse.jsonBody,
                                                                                      r'''$.total_page''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30.0,
                                                                                            buttonSize: 40.0,
                                                                                            disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            icon: Icon(
                                                                                              Icons.skip_previous_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                            onPressed: (_model.productPage == 1)
                                                                                                ? null
                                                                                                : () async {
                                                                                                    _model.productPage = _model.productPage! + -1;
                                                                                                    setState(() {});
                                                                                                  },
                                                                                          ),
                                                                                          FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30.0,
                                                                                            buttonSize: 40.0,
                                                                                            disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            icon: Icon(
                                                                                              Icons.skip_next_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                            onPressed: (_model.productPage ==
                                                                                                    getJsonField(
                                                                                                      stackReportProductResponse.jsonBody,
                                                                                                      r'''$.total_page''',
                                                                                                    ))
                                                                                                ? null
                                                                                                : () async {
                                                                                                    _model.productPage = _model.productPage! + 1;
                                                                                                    setState(() {});
                                                                                                  },
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 32.0)),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 32.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: KMartApiGroup
                                                          .reportSalesCall
                                                          .call(
                                                        startDate:
                                                            valueOrDefault<
                                                                String>(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue1 ==
                                                                'monthly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  functions
                                                                      .monthlydate());
                                                            } else if (_model
                                                                    .dropDownValue1 ==
                                                                'weekly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  functions
                                                                      .weeklydates());
                                                            } else if (_model
                                                                    .dropDownValue1 ==
                                                                'daily') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue1 ==
                                                                'custom') {
                                                              return (dateTimeFormat(
                                                                              'y/M/d',
                                                                              _model
                                                                                  .datePicked1) !=
                                                                          ''
                                                                  ? dateTimeFormat(
                                                                      'y/M/d',
                                                                      _model
                                                                          .datePicked1)
                                                                  : dateTimeFormat(
                                                                      'y/M/d',
                                                                      getCurrentTimestamp));
                                                            } else {
                                                              return getCurrentTimestamp
                                                                  .toString();
                                                            }
                                                          }(),
                                                          '2024-05-22',
                                                        ),
                                                        limit: 10,
                                                        endDate: valueOrDefault<
                                                            String>(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue1 ==
                                                                'monthly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue1 ==
                                                                'weekly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue1 ==
                                                                'daily') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue1 ==
                                                                'custom') {
                                                              return (dateTimeFormat(
                                                                              'y/M/d',
                                                                              _model
                                                                                  .datePicked2) !=
                                                                          ''
                                                                  ? dateTimeFormat(
                                                                      'y/M/d',
                                                                      _model
                                                                          .datePicked2)
                                                                  : dateTimeFormat(
                                                                      'y/M/d',
                                                                      getCurrentTimestamp));
                                                            } else {
                                                              return getCurrentTimestamp
                                                                  .toString();
                                                            }
                                                          }(),
                                                          '2024-05-22',
                                                        ),
                                                        pageNo:
                                                            _model.salesPage,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final stackReportSalesResponse =
                                                            snapshot.data!;
                                                        return SizedBox(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            48.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    FlutterFlowDropDown<String>(
                                                                                      controller: _model.dropDownValueController1 ??= FormFieldController<String>(
                                                                                        _model.dropDownValue1 ??= 'monthly',
                                                                                      ),
                                                                                      options: List<String>.from([
                                                                                        'custom',
                                                                                        'monthly',
                                                                                        'weekly',
                                                                                        'daily'
                                                                                      ]),
                                                                                      optionLabels: const [
                                                                                        'Custom',
                                                                                        'Monthly',
                                                                                        'Weekly',
                                                                                        'Daily'
                                                                                      ],
                                                                                      onChanged: (val) => setState(() => _model.dropDownValue1 = val),
                                                                                      width: 150.0,
                                                                                      height: 42.0,
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                      icon: Icon(
                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 0.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: false,
                                                                                      isMultiSelect: false,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        height: 42.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                'From',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    FFAppState().customDates = true;
                                                                                                    setState(() {});
                                                                                                    final datePicked1Date = await showDatePicker(
                                                                                                      context: context,
                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                      firstDate: DateTime(1900),
                                                                                                      lastDate: DateTime(2050),
                                                                                                      builder: (context, child) {
                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                          context,
                                                                                                          child!,
                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                              ),
                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          iconSize: 24.0,
                                                                                                        );
                                                                                                      },
                                                                                                    );

                                                                                                    if (datePicked1Date != null) {
                                                                                                      safeSetState(() {
                                                                                                        _model.datePicked1 = DateTime(
                                                                                                          datePicked1Date.year,
                                                                                                          datePicked1Date.month,
                                                                                                          datePicked1Date.day,
                                                                                                        );
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if (_model.dropDownValue1 == 'monthly') {
                                                                                                          return dateTimeFormat('y/M/d', functions.monthlydate());
                                                                                                        } else if (_model.dropDownValue1 == 'weekly') {
                                                                                                          return dateTimeFormat('y/M/d', functions.weeklydates());
                                                                                                        } else if (_model.dropDownValue1 == 'daily') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue1 == 'custom') {
                                                                                                          return (dateTimeFormat('y/M/d', _model.datePicked1) != '' ? dateTimeFormat('y/M/d', _model.datePicked1) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                        } else {
                                                                                                          return getCurrentTimestamp.toString();
                                                                                                        }
                                                                                                      }(),
                                                                                                      '2024-05-22',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                'To',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    final datePicked2Date = await showDatePicker(
                                                                                                      context: context,
                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                      firstDate: DateTime(1900),
                                                                                                      lastDate: DateTime(2050),
                                                                                                      builder: (context, child) {
                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                          context,
                                                                                                          child!,
                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                              ),
                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          iconSize: 24.0,
                                                                                                        );
                                                                                                      },
                                                                                                    );

                                                                                                    if (datePicked2Date != null) {
                                                                                                      safeSetState(() {
                                                                                                        _model.datePicked2 = DateTime(
                                                                                                          datePicked2Date.year,
                                                                                                          datePicked2Date.month,
                                                                                                          datePicked2Date.day,
                                                                                                        );
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if (_model.dropDownValue1 == 'monthly') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue1 == 'weekly') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue1 == 'daily') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue1 == 'custom') {
                                                                                                          return (dateTimeFormat('y/M/d', _model.datePicked2) != '' ? dateTimeFormat('y/M/d', _model.datePicked2) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                        } else {
                                                                                                          return getCurrentTimestamp.toString();
                                                                                                        }
                                                                                                      }(),
                                                                                                      '2024-05-22',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () {
                                                                                      print('Button pressed ...');
                                                                                    },
                                                                                    text: 'Print',
                                                                                    icon: const Icon(
                                                                                      Icons.print_outlined,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    showLoadingIndicator: false,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  height: 45.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(8.0),
                                                                                      topRight: Radius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Date',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Items',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Quantity',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'MRP',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Discount',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                          height: 100.0,
                                                                                          decoration: BoxDecoration(
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 0.5,
                                                                                            ),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              'Total',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Builder(
                                                                                  builder: (context) {
                                                                                    final sales = KMartApiGroup.reportSalesCall
                                                                                            .data(
                                                                                              stackReportSalesResponse.jsonBody,
                                                                                            )
                                                                                            ?.toList() ??
                                                                                        [];
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      primary: false,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: sales.length,
                                                                                      itemBuilder: (context, salesIndex) {
                                                                                        final salesItem = sales[salesIndex];
                                                                                        return Container(
                                                                                          height: 35.0,
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      salesItem,
                                                                                                      r'''$.order_date''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        salesItem,
                                                                                                        r'''$.item_name''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 1.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        salesItem,
                                                                                                        r'''$.sell_quantity''',
                                                                                                      ).toString(),
                                                                                                      maxLines: 2,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '₹ ${getJsonField(
                                                                                                        salesItem,
                                                                                                        r'''$.mrp_total''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '₹ ${getJsonField(
                                                                                                        salesItem,
                                                                                                        r'''$.total_discount''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Container(
                                                                                                  width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                  height: 40.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      width: 0.5,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '₹ ${getJsonField(
                                                                                                        salesItem,
                                                                                                        r'''$.net_amount''',
                                                                                                      ).toString()}',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontSize: 15.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            48.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        const Expanded(
                                                                          flex:
                                                                              5,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              5,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Text(
                                                                                'Rows per page : 10',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Total : ${getJsonField(
                                                                                  stackReportSalesResponse.jsonBody,
                                                                                  r'''$.total_sales_count''',
                                                                                ).toString()}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Page No : ${getJsonField(
                                                                                  stackReportSalesResponse.jsonBody,
                                                                                  r'''$.current_page''',
                                                                                ).toString()} of ${getJsonField(
                                                                                  stackReportSalesResponse.jsonBody,
                                                                                  r'''$.total_page''',
                                                                                ).toString()}',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        buttonSize: 40.0,
                                                                                        disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                        icon: Icon(
                                                                                          Icons.skip_previous_outlined,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                        onPressed: (_model.salesPage == 1)
                                                                                            ? null
                                                                                            : () async {
                                                                                                _model.salesPage = _model.salesPage! + -1;
                                                                                                setState(() {});
                                                                                              },
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        buttonSize: 40.0,
                                                                                        disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                        icon: Icon(
                                                                                          Icons.skip_next_outlined,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                        onPressed: (_model.salesPage ==
                                                                                                getJsonField(
                                                                                                  stackReportSalesResponse.jsonBody,
                                                                                                  r'''$.total_page''',
                                                                                                ))
                                                                                            ? null
                                                                                            : () async {
                                                                                                _model.salesPage = _model.salesPage! + 1;
                                                                                                setState(() {});
                                                                                              },
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 32.0)),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 32.0)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    SizedBox(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        90.0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                FlutterFlowDropDown<String>(
                                                                                  controller: _model.dropDownValueController2 ??= FormFieldController<String>(
                                                                                    _model.dropDownValue2 ??= 'monthly',
                                                                                  ),
                                                                                  options: List<String>.from([
                                                                                    'custom',
                                                                                    'monthly',
                                                                                    'weekly',
                                                                                    'daily'
                                                                                  ]),
                                                                                  optionLabels: const [
                                                                                    'Custom',
                                                                                    'Monthly',
                                                                                    'Weekly',
                                                                                    'Daily'
                                                                                  ],
                                                                                  onChanged: (val) => setState(() => _model.dropDownValue2 = val),
                                                                                  width: 150.0,
                                                                                  height: 42.0,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 0.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 1.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: false,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    height: 42.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'From',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w300,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                            child: InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                FFAppState().customDates = true;
                                                                                                setState(() {});
                                                                                                final datePicked3Date = await showDatePicker(
                                                                                                  context: context,
                                                                                                  initialDate: getCurrentTimestamp,
                                                                                                  firstDate: DateTime(1900),
                                                                                                  lastDate: DateTime(2050),
                                                                                                  builder: (context, child) {
                                                                                                    return wrapInMaterialDatePickerTheme(
                                                                                                      context,
                                                                                                      child!,
                                                                                                      headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                      headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                      headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                            fontSize: 32.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                          ),
                                                                                                      pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                      selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                      selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                      actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                      iconSize: 24.0,
                                                                                                    );
                                                                                                  },
                                                                                                );

                                                                                                if (datePicked3Date != null) {
                                                                                                  safeSetState(() {
                                                                                                    _model.datePicked3 = DateTime(
                                                                                                      datePicked3Date.year,
                                                                                                      datePicked3Date.month,
                                                                                                      datePicked3Date.day,
                                                                                                    );
                                                                                                  });
                                                                                                }
                                                                                              },
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  () {
                                                                                                    if (_model.dropDownValue2 == 'monthly') {
                                                                                                      return dateTimeFormat('y/M/d', functions.monthlydate());
                                                                                                    } else if (_model.dropDownValue2 == 'weekly') {
                                                                                                      return dateTimeFormat('y/M/d', functions.weeklydates());
                                                                                                    } else if (_model.dropDownValue2 == 'daily') {
                                                                                                      return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                    } else if (_model.dropDownValue2 == 'custom') {
                                                                                                      return (dateTimeFormat('y/M/d', _model.datePicked3) != '' ? dateTimeFormat('y/M/d', _model.datePicked3) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                    } else {
                                                                                                      return getCurrentTimestamp.toString();
                                                                                                    }
                                                                                                  }(),
                                                                                                  '2024-05-22',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'To',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w300,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                            child: InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                final datePicked4Date = await showDatePicker(
                                                                                                  context: context,
                                                                                                  initialDate: getCurrentTimestamp,
                                                                                                  firstDate: DateTime(1900),
                                                                                                  lastDate: DateTime(2050),
                                                                                                  builder: (context, child) {
                                                                                                    return wrapInMaterialDatePickerTheme(
                                                                                                      context,
                                                                                                      child!,
                                                                                                      headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                      headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                      headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                            fontSize: 32.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                          ),
                                                                                                      pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                      selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                      selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                      actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                      iconSize: 24.0,
                                                                                                    );
                                                                                                  },
                                                                                                );

                                                                                                if (datePicked4Date != null) {
                                                                                                  safeSetState(() {
                                                                                                    _model.datePicked4 = DateTime(
                                                                                                      datePicked4Date.year,
                                                                                                      datePicked4Date.month,
                                                                                                      datePicked4Date.day,
                                                                                                    );
                                                                                                  });
                                                                                                }
                                                                                              },
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  () {
                                                                                                    if (_model.dropDownValue2 == 'monthly') {
                                                                                                      return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                    } else if (_model.dropDownValue2 == 'weekly') {
                                                                                                      return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                    } else if (_model.dropDownValue2 == 'daily') {
                                                                                                      return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                    } else if (_model.dropDownValue2 == 'custom') {
                                                                                                      return (dateTimeFormat('y/M/d', _model.datePicked4) != '' ? dateTimeFormat('y/M/d', _model.datePicked4) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                    } else {
                                                                                                      return getCurrentTimestamp.toString();
                                                                                                    }
                                                                                                  }(),
                                                                                                  '2024-05-22',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () {
                                                                                  print('Button pressed ...');
                                                                                },
                                                                                text: 'Print',
                                                                                icon: const Icon(
                                                                                  Icons.print_outlined,
                                                                                  size: 24.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                      ),
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                showLoadingIndicator: false,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            height:
                                                                                45.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(0.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(8.0),
                                                                                topRight: Radius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                      width: 0.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Date',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 0.5,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Order id',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 0.5,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Payment mode',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 0.5,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Transaction Mode',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 0.5,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Transaction Id',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                    height: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      border: Border.all(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 0.5,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Amount',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          ListView(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            primary:
                                                                                false,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            children: [
                                                                              Container(
                                                                                height: 35.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                      height: 40.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 0.5,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          '23/03/2023',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 15.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 40.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Cow Milk',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                        height: 40.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            '20',
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 40.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            '₹ 1080',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 40.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            '₹ 40',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 40.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            '₹ 1040',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        48.0)),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              height: 90.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          16.0,
                                                                          8.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            250.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.stretch,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                  child: Text(
                                                                                    'Total Amount :',
                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                  child: Text(
                                                                                    ' ₹ 1134.00',
                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        const Expanded(
                                                                          flex:
                                                                              5,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              5,
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Text(
                                                                                'Rows per page : 10',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Total : 10',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                'Page No : 1 of 3',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        buttonSize: 40.0,
                                                                                        disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                        icon: Icon(
                                                                                          Icons.skip_previous_outlined,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                        onPressed: (_model.subPage == 1)
                                                                                            ? null
                                                                                            : () async {
                                                                                                _model.subPage = _model.subPage! + -1;
                                                                                                setState(() {});
                                                                                              },
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        buttonSize: 40.0,
                                                                                        icon: Icon(
                                                                                          Icons.skip_next_outlined,
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          _model.orderPage = _model.orderPage! + 1;
                                                                                          setState(() {});
                                                                                        },
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 32.0)),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 32.0)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: KMartApiGroup
                                                          .reportSubscriptionCall
                                                          .call(
                                                        limit: 10,
                                                        pageNo: _model.subPage,
                                                        startDate:
                                                            valueOrDefault<
                                                                String>(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue3 ==
                                                                'monthly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  functions
                                                                      .monthlydate());
                                                            } else if (_model
                                                                    .dropDownValue3 ==
                                                                'weekly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  functions
                                                                      .weeklydates());
                                                            } else if (_model
                                                                    .dropDownValue3 ==
                                                                'daily') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue3 ==
                                                                'custom') {
                                                              return (dateTimeFormat(
                                                                              'y/M/d',
                                                                              _model
                                                                                  .datePicked5) !=
                                                                          ''
                                                                  ? dateTimeFormat(
                                                                      'y/M/d',
                                                                      _model
                                                                          .datePicked5)
                                                                  : dateTimeFormat(
                                                                      'y/M/d',
                                                                      getCurrentTimestamp));
                                                            } else {
                                                              return getCurrentTimestamp
                                                                  .toString();
                                                            }
                                                          }(),
                                                          '2024-05-22',
                                                        ),
                                                        endDate: valueOrDefault<
                                                            String>(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue3 ==
                                                                'monthly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue3 ==
                                                                'weekly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue3 ==
                                                                'daily') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue3 ==
                                                                'custom') {
                                                              return (dateTimeFormat(
                                                                              'y/M/d',
                                                                              _model
                                                                                  .datePicked6) !=
                                                                          ''
                                                                  ? dateTimeFormat(
                                                                      'y/M/d',
                                                                      _model
                                                                          .datePicked6)
                                                                  : dateTimeFormat(
                                                                      'y/M/d',
                                                                      getCurrentTimestamp));
                                                            } else {
                                                              return getCurrentTimestamp
                                                                  .toString();
                                                            }
                                                          }(),
                                                          '2024-05-22',
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final stackReportSubscriptionResponse =
                                                            snapshot.data!;
                                                        return SizedBox(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        155.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    FlutterFlowDropDown<String>(
                                                                                      controller: _model.dropDownValueController3 ??= FormFieldController<String>(
                                                                                        _model.dropDownValue3 ??= 'monthly',
                                                                                      ),
                                                                                      options: List<String>.from([
                                                                                        'custom',
                                                                                        'monthly',
                                                                                        'weekly',
                                                                                        'daily'
                                                                                      ]),
                                                                                      optionLabels: const [
                                                                                        'Custom',
                                                                                        'Monthly',
                                                                                        'Weekly',
                                                                                        'Daily'
                                                                                      ],
                                                                                      onChanged: (val) => setState(() => _model.dropDownValue3 = val),
                                                                                      width: 150.0,
                                                                                      height: 42.0,
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                      icon: Icon(
                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 0.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: false,
                                                                                      isMultiSelect: false,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        height: 42.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                'From',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    FFAppState().customDates = true;
                                                                                                    setState(() {});
                                                                                                    final datePicked5Date = await showDatePicker(
                                                                                                      context: context,
                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                      firstDate: DateTime(1900),
                                                                                                      lastDate: DateTime(2050),
                                                                                                      builder: (context, child) {
                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                          context,
                                                                                                          child!,
                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                              ),
                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          iconSize: 24.0,
                                                                                                        );
                                                                                                      },
                                                                                                    );

                                                                                                    if (datePicked5Date != null) {
                                                                                                      safeSetState(() {
                                                                                                        _model.datePicked5 = DateTime(
                                                                                                          datePicked5Date.year,
                                                                                                          datePicked5Date.month,
                                                                                                          datePicked5Date.day,
                                                                                                        );
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if (_model.dropDownValue3 == 'monthly') {
                                                                                                          return dateTimeFormat('y/M/d', functions.monthlydate());
                                                                                                        } else if (_model.dropDownValue3 == 'weekly') {
                                                                                                          return dateTimeFormat('y/M/d', functions.weeklydates());
                                                                                                        } else if (_model.dropDownValue3 == 'daily') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue3 == 'custom') {
                                                                                                          return (dateTimeFormat('y/M/d', _model.datePicked5) != '' ? dateTimeFormat('y/M/d', _model.datePicked5) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                        } else {
                                                                                                          return getCurrentTimestamp.toString();
                                                                                                        }
                                                                                                      }(),
                                                                                                      '2024-05-22',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                'To',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    final datePicked6Date = await showDatePicker(
                                                                                                      context: context,
                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                      firstDate: DateTime(1900),
                                                                                                      lastDate: DateTime(2050),
                                                                                                      builder: (context, child) {
                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                          context,
                                                                                                          child!,
                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                              ),
                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          iconSize: 24.0,
                                                                                                        );
                                                                                                      },
                                                                                                    );

                                                                                                    if (datePicked6Date != null) {
                                                                                                      safeSetState(() {
                                                                                                        _model.datePicked6 = DateTime(
                                                                                                          datePicked6Date.year,
                                                                                                          datePicked6Date.month,
                                                                                                          datePicked6Date.day,
                                                                                                        );
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if (_model.dropDownValue3 == 'monthly') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue3 == 'weekly') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue3 == 'daily') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue3 == 'custom') {
                                                                                                          return (dateTimeFormat('y/M/d', _model.datePicked6) != '' ? dateTimeFormat('y/M/d', _model.datePicked6) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                        } else {
                                                                                                          return getCurrentTimestamp.toString();
                                                                                                        }
                                                                                                      }(),
                                                                                                      '2024-05-22',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () {
                                                                                      print('Button pressed ...');
                                                                                    },
                                                                                    text: 'Print',
                                                                                    icon: const Icon(
                                                                                      Icons.print_outlined,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    showLoadingIndicator: false,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                height: 45.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  borderRadius: const BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                    bottomRight: Radius.circular(0.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.05,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 0.5,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Id',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.14,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 0.5,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'User Name',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 0.5,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Contact Number',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Sub Status',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Start Date',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'End Date',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 0.5,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Item Name',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Item Price',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Quantity',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Amount',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) {
                                                                                  final sub = KMartApiGroup.reportSubscriptionCall
                                                                                          .sub(
                                                                                            stackReportSubscriptionResponse.jsonBody,
                                                                                          )
                                                                                          ?.toList() ??
                                                                                      [];
                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    primary: false,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: sub.length,
                                                                                    itemBuilder: (context, subIndex) {
                                                                                      final subItem = sub[subIndex];
                                                                                      return Container(
                                                                                        height: 35.0,
                                                                                        decoration: const BoxDecoration(),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.05,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 0.5,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    subItem,
                                                                                                    r'''$.id''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.14,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 0.5,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    subItem,
                                                                                                    r'''$.username''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.1,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    subItem,
                                                                                                    r'''$.mobile_number''',
                                                                                                  ).toString(),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      subItem,
                                                                                                      r'''$.subscription_status''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      subItem,
                                                                                                      r'''$.start_date''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      subItem,
                                                                                                      r'''$.end_date''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.12,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 0.5,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    subItem,
                                                                                                    r'''$.item_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      subItem,
                                                                                                      r'''$.item_price''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    functions
                                                                                                        .convertDatesToDay(
                                                                                                            DataStruct.maybeFromMap(getJsonField(
                                                                                                              subItem,
                                                                                                              r'''$.start_date''',
                                                                                                            ))?.startDate,
                                                                                                            DataStruct.maybeFromMap(getJsonField(
                                                                                                              subItem,
                                                                                                              r'''$.end_date''',
                                                                                                            ))?.endDate,
                                                                                                            getJsonField(
                                                                                                              subItem,
                                                                                                              r'''$.quantity''',
                                                                                                            ))
                                                                                                        .toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    '₹ 1040',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            48.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child:
                                                                    Container(
                                                                  height: 155.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            1.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 250.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            'Active Subscriptions :',
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              stackReportSubscriptionResponse.jsonBody,
                                                                                              r'''$.active_count''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              'Disabled Subscriptions :',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              '+ ${getJsonField(
                                                                                                stackReportSubscriptionResponse.jsonBody,
                                                                                                r'''$.disabled_count''',
                                                                                              ).toString()}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                    fontSize: 18.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            'Total Subscriptions :',
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              stackReportSubscriptionResponse.jsonBody,
                                                                                              r'''$.total_count''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                  fontSize: 18.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              0.0,
                                                                              4.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              const Expanded(
                                                                                flex: 5,
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [],
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Rows per page : 10',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Total : ${getJsonField(
                                                                                        stackReportSubscriptionResponse.jsonBody,
                                                                                        r'''$.total_count''',
                                                                                      ).toString()}',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Page No : ${getJsonField(
                                                                                        stackReportSubscriptionResponse.jsonBody,
                                                                                        r'''$.current_page''',
                                                                                      ).toString()} of ${getJsonField(
                                                                                        stackReportSubscriptionResponse.jsonBody,
                                                                                        r'''$.total_page''',
                                                                                      ).toString()}',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            FlutterFlowIconButton(
                                                                                              borderColor: Colors.transparent,
                                                                                              borderRadius: 30.0,
                                                                                              buttonSize: 40.0,
                                                                                              disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                              icon: Icon(
                                                                                                Icons.skip_previous_outlined,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                              onPressed: (_model.subPage == 1)
                                                                                                  ? null
                                                                                                  : () async {
                                                                                                      _model.subPage = _model.subPage! + -1;
                                                                                                      setState(() {});
                                                                                                    },
                                                                                            ),
                                                                                            FlutterFlowIconButton(
                                                                                              borderColor: Colors.transparent,
                                                                                              borderRadius: 30.0,
                                                                                              buttonSize: 40.0,
                                                                                              disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                              icon: Icon(
                                                                                                Icons.skip_next_outlined,
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                              onPressed: (_model.subPage ==
                                                                                                      getJsonField(
                                                                                                        stackReportSubscriptionResponse.jsonBody,
                                                                                                        r'''$.total_page''',
                                                                                                      ))
                                                                                                  ? null
                                                                                                  : () async {
                                                                                                      _model.orderPage = _model.orderPage! + 1;
                                                                                                      setState(() {});
                                                                                                    },
                                                                                            ),
                                                                                          ].divide(const SizedBox(width: 32.0)),
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 32.0)),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: KMartApiGroup
                                                          .reportOrdersCall
                                                          .call(
                                                        limit: 10,
                                                        pageNo:
                                                            _model.orderPage,
                                                        startDate:
                                                            valueOrDefault<
                                                                String>(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue4 ==
                                                                'monthly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  functions
                                                                      .monthlydate());
                                                            } else if (_model
                                                                    .dropDownValue4 ==
                                                                'weekly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  functions
                                                                      .weeklydates());
                                                            } else if (_model
                                                                    .dropDownValue4 ==
                                                                'daily') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue4 ==
                                                                'custom') {
                                                              return (dateTimeFormat(
                                                                              'y/M/d',
                                                                              _model
                                                                                  .datePicked7) !=
                                                                          ''
                                                                  ? dateTimeFormat(
                                                                      'y/M/d',
                                                                      _model
                                                                          .datePicked7)
                                                                  : dateTimeFormat(
                                                                      'y/M/d',
                                                                      getCurrentTimestamp));
                                                            } else {
                                                              return getCurrentTimestamp
                                                                  .toString();
                                                            }
                                                          }(),
                                                          '2024-05-22',
                                                        ),
                                                        endDate: valueOrDefault<
                                                            String>(
                                                          () {
                                                            if (_model
                                                                    .dropDownValue4 ==
                                                                'monthly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue4 ==
                                                                'weekly') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue4 ==
                                                                'daily') {
                                                              return dateTimeFormat(
                                                                  'y/M/d',
                                                                  getCurrentTimestamp);
                                                            } else if (_model
                                                                    .dropDownValue4 ==
                                                                'custom') {
                                                              return (dateTimeFormat(
                                                                              'y/M/d',
                                                                              _model
                                                                                  .datePicked8) !=
                                                                          ''
                                                                  ? dateTimeFormat(
                                                                      'y/M/d',
                                                                      _model
                                                                          .datePicked8)
                                                                  : dateTimeFormat(
                                                                      'y/M/d',
                                                                      getCurrentTimestamp));
                                                            } else {
                                                              return getCurrentTimestamp
                                                                  .toString();
                                                            }
                                                          }(),
                                                          '2024-05-22',
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitCircle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final stackReportOrdersResponse =
                                                            snapshot.data!;
                                                        return SizedBox(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          child: Stack(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            90.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                8.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    FlutterFlowDropDown<String>(
                                                                                      controller: _model.dropDownValueController4 ??= FormFieldController<String>(
                                                                                        _model.dropDownValue4 ??= 'monthly',
                                                                                      ),
                                                                                      options: List<String>.from([
                                                                                        'custom',
                                                                                        'monthly',
                                                                                        'weekly',
                                                                                        'daily'
                                                                                      ]),
                                                                                      optionLabels: const [
                                                                                        'Custom',
                                                                                        'Monthly',
                                                                                        'Weekly',
                                                                                        'Daily'
                                                                                      ],
                                                                                      onChanged: (val) async {
                                                                                        setState(() => _model.dropDownValue4 = val);
                                                                                        _model.orderdates = await actions.dateFrequancy(
                                                                                          context,
                                                                                          _model.dropDownValue4,
                                                                                        );

                                                                                        setState(() {});
                                                                                      },
                                                                                      width: 150.0,
                                                                                      height: 42.0,
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                      icon: Icon(
                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 0.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: false,
                                                                                      isMultiSelect: false,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        height: 42.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                'From',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    FFAppState().customDates = true;
                                                                                                    setState(() {});
                                                                                                    final datePicked7Date = await showDatePicker(
                                                                                                      context: context,
                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                      firstDate: DateTime(1900),
                                                                                                      lastDate: DateTime(2050),
                                                                                                      builder: (context, child) {
                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                          context,
                                                                                                          child!,
                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                              ),
                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          iconSize: 24.0,
                                                                                                        );
                                                                                                      },
                                                                                                    );

                                                                                                    if (datePicked7Date != null) {
                                                                                                      safeSetState(() {
                                                                                                        _model.datePicked7 = DateTime(
                                                                                                          datePicked7Date.year,
                                                                                                          datePicked7Date.month,
                                                                                                          datePicked7Date.day,
                                                                                                        );
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if (_model.dropDownValue4 == 'monthly') {
                                                                                                          return dateTimeFormat('y/M/d', functions.monthlydate());
                                                                                                        } else if (_model.dropDownValue4 == 'weekly') {
                                                                                                          return dateTimeFormat('y/M/d', functions.weeklydates());
                                                                                                        } else if (_model.dropDownValue4 == 'daily') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue4 == 'custom') {
                                                                                                          return (dateTimeFormat('y/M/d', _model.datePicked7) != '' ? dateTimeFormat('y/M/d', _model.datePicked7) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                        } else {
                                                                                                          return getCurrentTimestamp.toString();
                                                                                                        }
                                                                                                      }(),
                                                                                                      '2024-05-22',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                'To',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                      fontSize: 12.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w300,
                                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                child: InkWell(
                                                                                                  splashColor: Colors.transparent,
                                                                                                  focusColor: Colors.transparent,
                                                                                                  hoverColor: Colors.transparent,
                                                                                                  highlightColor: Colors.transparent,
                                                                                                  onTap: () async {
                                                                                                    final datePicked8Date = await showDatePicker(
                                                                                                      context: context,
                                                                                                      initialDate: getCurrentTimestamp,
                                                                                                      firstDate: DateTime(1900),
                                                                                                      lastDate: DateTime(2050),
                                                                                                      builder: (context, child) {
                                                                                                        return wrapInMaterialDatePickerTheme(
                                                                                                          context,
                                                                                                          child!,
                                                                                                          headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                                                fontSize: 32.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                                                              ),
                                                                                                          pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                                          selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                                          actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                                          iconSize: 24.0,
                                                                                                        );
                                                                                                      },
                                                                                                    );

                                                                                                    if (datePicked8Date != null) {
                                                                                                      safeSetState(() {
                                                                                                        _model.datePicked8 = DateTime(
                                                                                                          datePicked8Date.year,
                                                                                                          datePicked8Date.month,
                                                                                                          datePicked8Date.day,
                                                                                                        );
                                                                                                      });
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      () {
                                                                                                        if (_model.dropDownValue4 == 'monthly') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue4 == 'weekly') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue4 == 'daily') {
                                                                                                          return dateTimeFormat('y/M/d', getCurrentTimestamp);
                                                                                                        } else if (_model.dropDownValue4 == 'custom') {
                                                                                                          return (dateTimeFormat('y/M/d', _model.datePicked8) != '' ? dateTimeFormat('y/M/d', _model.datePicked8) : dateTimeFormat('y/M/d', getCurrentTimestamp));
                                                                                                        } else {
                                                                                                          return getCurrentTimestamp.toString();
                                                                                                        }
                                                                                                      }(),
                                                                                                      '2024-05-22',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: FFButtonWidget(
                                                                                    onPressed: () {
                                                                                      print('Button pressed ...');
                                                                                    },
                                                                                    text: 'Print',
                                                                                    icon: const Icon(
                                                                                      Icons.print_outlined,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    options: FFButtonOptions(
                                                                                      height: 40.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                          ),
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    showLoadingIndicator: false,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                height: 45.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  borderRadius: const BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                    bottomRight: Radius.circular(0.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.05,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Order Id',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Date',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 0.15,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                          width: 0.5,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Customer Name ',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Order Total',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Order type',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Order Status',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Payment Mode',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                        height: 100.0,
                                                                                        decoration: BoxDecoration(
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 0.5,
                                                                                          ),
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            'Payment Status',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Builder(
                                                                                builder: (context) {
                                                                                  final orders = KMartApiGroup.reportOrdersCall
                                                                                          .orders(
                                                                                            stackReportOrdersResponse.jsonBody,
                                                                                          )
                                                                                          ?.toList() ??
                                                                                      [];
                                                                                  return ListView.builder(
                                                                                    padding: EdgeInsets.zero,
                                                                                    primary: false,
                                                                                    shrinkWrap: true,
                                                                                    scrollDirection: Axis.vertical,
                                                                                    itemCount: orders.length,
                                                                                    itemBuilder: (context, ordersIndex) {
                                                                                      final ordersItem = orders[ordersIndex];
                                                                                      return Container(
                                                                                        height: 35.0,
                                                                                        decoration: const BoxDecoration(),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.05,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.order_id''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.order_date''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.15,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 1.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    ordersItem,
                                                                                                    r'''$.customer_name''',
                                                                                                  ).toString(),
                                                                                                  maxLines: 2,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 15.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    '₹ ${getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.order_total''',
                                                                                                    ).toString()}',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.order_type''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.order_status''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.payment_mode''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.sizeOf(context).width * 0.08,
                                                                                                height: 40.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    width: 0.5,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      ordersItem,
                                                                                                      r'''$.payment_status''',
                                                                                                    ).toString(),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            48.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        1.0),
                                                                child:
                                                                    Container(
                                                                  height: 90.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              8.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                230.0,
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                        child: Text(
                                                                                          'Total Orders :',
                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            getJsonField(
                                                                                              stackReportOrdersResponse.jsonBody,
                                                                                              r'''$.total_orders''',
                                                                                            )?.toString(),
                                                                                            '00',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                                fontSize: 18.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            const Expanded(
                                                                              flex: 5,
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [],
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              flex: 5,
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: [
                                                                                  Text(
                                                                                    'Rows per page : 10',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Total : ${getJsonField(
                                                                                      stackReportOrdersResponse.jsonBody,
                                                                                      r'''$.total_orders''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Page No : ${getJsonField(
                                                                                      stackReportOrdersResponse.jsonBody,
                                                                                      r'''$.current_page''',
                                                                                    ).toString()} of ${getJsonField(
                                                                                      stackReportOrdersResponse.jsonBody,
                                                                                      r'''$.pages''',
                                                                                    ).toString()}',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30.0,
                                                                                            buttonSize: 40.0,
                                                                                            disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            icon: Icon(
                                                                                              Icons.skip_previous_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                            onPressed: (_model.orderPage == 1)
                                                                                                ? null
                                                                                                : () async {
                                                                                                    _model.orderPage = _model.orderPage! + -1;
                                                                                                    setState(() {});
                                                                                                  },
                                                                                          ),
                                                                                          FlutterFlowIconButton(
                                                                                            borderColor: Colors.transparent,
                                                                                            borderRadius: 30.0,
                                                                                            buttonSize: 40.0,
                                                                                            disabledIconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            icon: Icon(
                                                                                              Icons.skip_next_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                            onPressed: (_model.orderPage ==
                                                                                                    getJsonField(
                                                                                                      stackReportOrdersResponse.jsonBody,
                                                                                                      r'''$.pages''',
                                                                                                    ))
                                                                                                ? null
                                                                                                : () async {
                                                                                                    _model.orderPage = _model.orderPage! + 1;
                                                                                                    setState(() {});
                                                                                                  },
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 32.0)),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 32.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
