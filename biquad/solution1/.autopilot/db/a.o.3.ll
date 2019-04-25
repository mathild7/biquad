; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad/biquad/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y2 = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@y1 = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@x2 = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@x1 = internal unnamed_addr global float 0.000000e+00, align 4 ; [#uses=2 type=float*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@biquad_str = internal unnamed_addr constant [7 x i8] c"biquad\00" ; [#uses=1 type=[7 x i8]*]
@p_str5 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=6 type=[9 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=46 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=6 type=[10 x i8]*]

; [#uses=20]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @biquad(float* %in_V, float* %out_V, float %a1, float %a2, float %b0, float %b1, float %b2, i1 %user_writing_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_V), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_V), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(float %a1), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(float %a2), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(float %b0), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(float %b1), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(float %b2), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %user_writing_V), !map !75
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @biquad_str) nounwind
  %user_writing_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %user_writing_V) ; [#uses=1 type=i1]
  %b2_read = call float @_ssdm_op_Read.s_axilite.float(float %b2) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b2_read}, i64 0, metadata !79), !dbg !489 ; [debug line = 16:8] [debug variable = b2]
  %b1_read = call float @_ssdm_op_Read.s_axilite.float(float %b1) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b1_read}, i64 0, metadata !490), !dbg !491 ; [debug line = 15:8] [debug variable = b1]
  %b0_read = call float @_ssdm_op_Read.s_axilite.float(float %b0) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b0_read}, i64 0, metadata !492), !dbg !493 ; [debug line = 14:8] [debug variable = b0]
  %a2_read = call float @_ssdm_op_Read.s_axilite.float(float %a2) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %a2_read}, i64 0, metadata !494), !dbg !495 ; [debug line = 13:8] [debug variable = a2]
  %a1_read = call float @_ssdm_op_Read.s_axilite.float(float %a1) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %a1_read}, i64 0, metadata !496), !dbg !497 ; [debug line = 12:8] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !498), !dbg !503 ; [debug line = 10:17] [debug variable = in.V]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !504), !dbg !506 ; [debug line = 11:17] [debug variable = out.V]
  call void @llvm.dbg.value(metadata !{float %a1}, i64 0, metadata !496), !dbg !497 ; [debug line = 12:8] [debug variable = a1]
  call void @llvm.dbg.value(metadata !{float %a2}, i64 0, metadata !494), !dbg !495 ; [debug line = 13:8] [debug variable = a2]
  call void @llvm.dbg.value(metadata !{float %b0}, i64 0, metadata !492), !dbg !493 ; [debug line = 14:8] [debug variable = b0]
  call void @llvm.dbg.value(metadata !{float %b1}, i64 0, metadata !490), !dbg !491 ; [debug line = 15:8] [debug variable = b1]
  call void @llvm.dbg.value(metadata !{float %b2}, i64 0, metadata !79), !dbg !489 ; [debug line = 16:8] [debug variable = b2]
  call void (...)* @_ssdm_op_SpecInterface(i1 %user_writing_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !507 ; [debug line = 19:1]
  call void (...)* @_ssdm_op_SpecInterface(float %b2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !509 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(float %b1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !510 ; [debug line = 21:1]
  call void (...)* @_ssdm_op_SpecInterface(float %b0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !511 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(float %a2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !512 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(float %a1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !513 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !514 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !515 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !516 ; [debug line = 27:1]
  br i1 %user_writing_V_read, label %._crit_edge, label %1, !dbg !517 ; [debug line = 29:6]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !518), !dbg !523 ; [debug line = 101:48@37:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %in_V}, i64 0, metadata !525), !dbg !528 ; [debug line = 123:48@102:9@37:2] [debug variable = stream<float>.V]
  %tmp_4 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %in_V), !dbg !531 ; [#uses=2 type=float] [debug line = 125:9@102:9@37:2]
  call void @llvm.dbg.value(metadata !{float %tmp_4}, i64 0, metadata !533), !dbg !531 ; [debug line = 125:9@102:9@37:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_4}, i64 0, metadata !534), !dbg !535 ; [debug line = 126:9@102:9@37:2] [debug variable = input]
  %tmp_6 = fmul float %tmp_4, %b0_read, !dbg !536 ; [#uses=1 type=float] [debug line = 39:57]
  %x1_load = load float* @x1, align 4, !dbg !536  ; [#uses=2 type=float] [debug line = 39:57]
  %tmp_7 = fmul float %x1_load, %b1_read, !dbg !536 ; [#uses=1 type=float] [debug line = 39:57]
  %tmp_8 = fadd float %tmp_6, %tmp_7, !dbg !536   ; [#uses=1 type=float] [debug line = 39:57]
  %x2_load = load float* @x2, align 4, !dbg !536  ; [#uses=1 type=float] [debug line = 39:57]
  %tmp_9 = fmul float %x2_load, %b2_read, !dbg !536 ; [#uses=1 type=float] [debug line = 39:57]
  %tmp_s = fadd float %tmp_8, %tmp_9, !dbg !536   ; [#uses=1 type=float] [debug line = 39:57]
  %y1_load = load float* @y1, align 4, !dbg !536  ; [#uses=2 type=float] [debug line = 39:57]
  %tmp_1 = fmul float %y1_load, %a1_read, !dbg !536 ; [#uses=1 type=float] [debug line = 39:57]
  %tmp_2 = fsub float %tmp_s, %tmp_1, !dbg !536   ; [#uses=1 type=float] [debug line = 39:57]
  %y2_load = load float* @y2, align 4, !dbg !536  ; [#uses=1 type=float] [debug line = 39:57]
  %tmp_3 = fmul float %y2_load, %a2_read, !dbg !536 ; [#uses=1 type=float] [debug line = 39:57]
  %output = fsub float %tmp_2, %tmp_3, !dbg !536  ; [#uses=2 type=float] [debug line = 39:57]
  call void @llvm.dbg.value(metadata !{float %output}, i64 0, metadata !537), !dbg !536 ; [debug line = 39:57] [debug variable = output]
  store float %y1_load, float* @y2, align 4, !dbg !538 ; [debug line = 41:2]
  store float %output, float* @y1, align 4, !dbg !539 ; [debug line = 42:2]
  store float %x1_load, float* @x2, align 4, !dbg !540 ; [debug line = 43:2]
  store float %tmp_4, float* @x1, align 4, !dbg !541 ; [debug line = 44:2]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !542), !dbg !545 ; [debug line = 105:48@46:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %out_V}, i64 0, metadata !547), !dbg !550 ; [debug line = 144:48@106:9@46:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %output}, i64 0, metadata !553), !dbg !555 ; [debug line = 145:31@106:9@46:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %out_V, float %output), !dbg !556 ; [debug line = 146:9@106:9@46:2]
  br label %._crit_edge, !dbg !557                ; [debug line = 47:1]

._crit_edge:                                      ; preds = %1, %0
  ret void, !dbg !557                             ; [debug line = 47:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=5]
define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !15, !18, !20, !26, !26, !29, !35}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!38}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<float> &", metadata !"stream<float> &", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"float", metadata !"ap_uint<1>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out", metadata !"a1", metadata !"a2", metadata !"b0", metadata !"b1", metadata !"b2", metadata !"user_writing"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!18 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !19, metadata !6}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!20 = metadata !{null, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !6}
!21 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!22 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!24 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !28, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !6}
!30 = metadata !{metadata !"kernel_arg_addr_space"}
!31 = metadata !{metadata !"kernel_arg_access_qual"}
!32 = metadata !{metadata !"kernel_arg_type"}
!33 = metadata !{metadata !"kernel_arg_type_qual"}
!34 = metadata !{metadata !"kernel_arg_name"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!38 = metadata !{metadata !39, [1 x i32]* @llvm_global_ctors_0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"llvm.global_ctors.0", metadata !43, metadata !"", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"in.V", metadata !43, metadata !"float", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"out.V", metadata !43, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"a1", metadata !57, metadata !"float", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"a2", metadata !57, metadata !"float", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"b0", metadata !57, metadata !"float", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"b1", metadata !57, metadata !"float", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"b2", metadata !57, metadata !"float", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"user_writing.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!79 = metadata !{i32 786689, metadata !80, metadata !"b2", metadata !81, i32 117440528, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 786478, i32 0, metadata !81, metadata !"biquad", metadata !"biquad", metadata !"_Z6biquadRN3hls6streamIfEES2_fffff7ap_uintILi1EE", metadata !81, i32 9, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !95, i32 18} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786473, metadata !"biquad.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad", null} ; [ DW_TAG_file_type ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !84, metadata !84, metadata !90, metadata !90, metadata !90, metadata !90, metadata !90, metadata !143}
!84 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_reference_type ]
!85 = metadata !{i32 786434, metadata !86, metadata !"stream<float>", metadata !87, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !88, i32 0, null, metadata !141} ; [ DW_TAG_class_type ]
!86 = metadata !{i32 786489, null, metadata !"hls", metadata !87, i32 69} ; [ DW_TAG_namespace ]
!87 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad", null} ; [ DW_TAG_file_type ]
!88 = metadata !{metadata !89, metadata !91, metadata !97, metadata !103, metadata !108, metadata !111, metadata !115, metadata !120, metadata !125, metadata !126, metadata !127, metadata !130, metadata !133, metadata !134, metadata !137}
!89 = metadata !{i32 786445, metadata !85, metadata !"V", metadata !87, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ]
!90 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786478, i32 0, metadata !85, metadata !"stream", metadata !"stream", metadata !"", metadata !87, i32 83, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 83} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{null, metadata !94}
!94 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !85} ; [ DW_TAG_pointer_type ]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!97 = metadata !{i32 786478, i32 0, metadata !85, metadata !"stream", metadata !"stream", metadata !"", metadata !87, i32 86, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 86} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{null, metadata !94, metadata !100}
!100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ]
!101 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_const_type ]
!102 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786478, i32 0, metadata !85, metadata !"stream", metadata !"stream", metadata !"", metadata !87, i32 91, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !95, i32 91} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !94, metadata !106}
!106 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_reference_type ]
!107 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_const_type ]
!108 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !87, i32 94, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !95, i32 94} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{metadata !84, metadata !94, metadata !106}
!111 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !87, i32 101, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 101} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{null, metadata !94, metadata !114}
!114 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_reference_type ]
!115 = metadata !{i32 786478, i32 0, metadata !85, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !87, i32 105, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 105} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{null, metadata !94, metadata !118}
!118 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_reference_type ]
!119 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_const_type ]
!120 = metadata !{i32 786478, i32 0, metadata !85, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !87, i32 112, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 112} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!124 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !107} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 786478, i32 0, metadata !85, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !87, i32 117, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 117} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !87, i32 123, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 123} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !87, i32 129, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 129} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !90, metadata !94}
!130 = metadata !{i32 786478, i32 0, metadata !85, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !87, i32 136, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 136} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !123, metadata !94, metadata !114}
!133 = metadata !{i32 786478, i32 0, metadata !85, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !87, i32 144, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 144} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786478, i32 0, metadata !85, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !87, i32 150, metadata !135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 150} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{metadata !123, metadata !94, metadata !118}
!137 = metadata !{i32 786478, i32 0, metadata !85, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !87, i32 157, metadata !138, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 157} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{metadata !140, metadata !94}
!140 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!141 = metadata !{metadata !142}
!142 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !90, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!143 = metadata !{i32 786434, null, metadata !"ap_uint<1>", metadata !144, i32 182, i64 8, i64 8, i32 0, i32 0, null, metadata !145, i32 0, null, metadata !488} ; [ DW_TAG_class_type ]
!144 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/ap_int.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad", null} ; [ DW_TAG_file_type ]
!145 = metadata !{metadata !146, metadata !417, metadata !421, metadata !424, metadata !427, metadata !430, metadata !433, metadata !436, metadata !439, metadata !442, metadata !445, metadata !448, metadata !451, metadata !454, metadata !457, metadata !460, metadata !463, metadata !466, metadata !469, metadata !476, metadata !481, metadata !485}
!146 = metadata !{i32 786460, metadata !143, null, metadata !144, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_inheritance ]
!147 = metadata !{i32 786434, null, metadata !"ap_int_base<1, false, true>", metadata !148, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !149, i32 0, null, metadata !414} ; [ DW_TAG_class_type ]
!148 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/ap_int_syn.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad", null} ; [ DW_TAG_file_type ]
!149 = metadata !{metadata !150, metadata !164, metadata !168, metadata !171, metadata !175, metadata !179, metadata !183, metadata !187, metadata !190, metadata !193, metadata !197, metadata !201, metadata !206, metadata !211, metadata !216, metadata !219, metadata !223, metadata !226, metadata !229, metadata !234, metadata !239, metadata !244, metadata !245, metadata !249, metadata !252, metadata !255, metadata !258, metadata !261, metadata !264, metadata !267, metadata !270, metadata !273, metadata !276, metadata !279, metadata !282, metadata !290, metadata !293, metadata !296, metadata !299, metadata !302, metadata !305, metadata !308, metadata !311, metadata !314, metadata !317, metadata !320, metadata !323, metadata !326, metadata !327, metadata !331, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !342, metadata !343, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !354, metadata !355, metadata !356, metadata !359, metadata !360, metadata !363, metadata !364, metadata !368, metadata !372, metadata !373, metadata !376, metadata !377, metadata !381, metadata !382, metadata !383, metadata !384, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !408, metadata !411}
!150 = metadata !{i32 786460, metadata !147, null, metadata !148, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_inheritance ]
!151 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !152, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !153, i32 0, null, metadata !160} ; [ DW_TAG_class_type ]
!152 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad", null} ; [ DW_TAG_file_type ]
!153 = metadata !{metadata !154, metadata !156}
!154 = metadata !{i32 786445, metadata !151, metadata !"V", metadata !152, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ]
!155 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!156 = metadata !{i32 786478, i32 0, metadata !151, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !152, i32 3, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 3} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{null, metadata !159}
!159 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !151} ; [ DW_TAG_pointer_type ]
!160 = metadata !{metadata !161, metadata !163}
!161 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !162, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!162 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!163 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !123, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!164 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1439, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1439} ; [ DW_TAG_subprogram ]
!165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!166 = metadata !{null, metadata !167}
!167 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !147} ; [ DW_TAG_pointer_type ]
!168 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1461, metadata !169, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1461} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!170 = metadata !{null, metadata !167, metadata !123}
!171 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1462, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1462} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !167, metadata !174}
!174 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!175 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1463, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1463} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{null, metadata !167, metadata !178}
!178 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!179 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1464, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1464} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !167, metadata !182}
!182 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!183 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1465, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1465} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{null, metadata !167, metadata !186}
!186 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!187 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1466, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1466} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{null, metadata !167, metadata !162}
!190 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1467, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1467} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{null, metadata !167, metadata !140}
!193 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1468, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1468} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{null, metadata !167, metadata !196}
!196 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!197 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1469, metadata !198, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1469} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{null, metadata !167, metadata !200}
!200 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!201 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1470, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1470} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{null, metadata !167, metadata !204}
!204 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !148, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ]
!205 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!206 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1471, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1471} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{null, metadata !167, metadata !209}
!209 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !148, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ]
!210 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!211 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1472, metadata !212, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1472} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!213 = metadata !{null, metadata !167, metadata !214}
!214 = metadata !{i32 786454, null, metadata !"half", metadata !148, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ]
!215 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!216 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1473, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1473} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{null, metadata !167, metadata !90}
!219 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1474, metadata !220, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !95, i32 1474} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!221 = metadata !{null, metadata !167, metadata !222}
!222 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!223 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1501, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1501} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{null, metadata !167, metadata !100}
!226 = metadata !{i32 786478, i32 0, metadata !147, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !148, i32 1508, metadata !227, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1508} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!228 = metadata !{null, metadata !167, metadata !100, metadata !174}
!229 = metadata !{i32 786478, i32 0, metadata !147, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE4readEv", metadata !148, i32 1529, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1529} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{metadata !147, metadata !232}
!232 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !233} ; [ DW_TAG_pointer_type ]
!233 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_volatile_type ]
!234 = metadata !{i32 786478, i32 0, metadata !147, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE5writeERKS0_", metadata !148, i32 1535, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1535} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{null, metadata !232, metadata !237}
!237 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !238} ; [ DW_TAG_reference_type ]
!238 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_const_type ]
!239 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !148, i32 1547, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1547} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{null, metadata !232, metadata !242}
!242 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_reference_type ]
!243 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_const_type ]
!244 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !148, i32 1556, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1556} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !148, i32 1579, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1579} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{metadata !248, metadata !167, metadata !242}
!248 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_reference_type ]
!249 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !148, i32 1584, metadata !250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1584} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{metadata !248, metadata !167, metadata !237}
!252 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEPKc", metadata !148, i32 1588, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1588} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{metadata !248, metadata !167, metadata !100}
!255 = metadata !{i32 786478, i32 0, metadata !147, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEPKca", metadata !148, i32 1596, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1596} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{metadata !248, metadata !167, metadata !100, metadata !174}
!258 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEa", metadata !148, i32 1610, metadata !259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1610} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!260 = metadata !{metadata !248, metadata !167, metadata !174}
!261 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEh", metadata !148, i32 1611, metadata !262, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1611} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{metadata !248, metadata !167, metadata !178}
!264 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEs", metadata !148, i32 1612, metadata !265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1612} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!266 = metadata !{metadata !248, metadata !167, metadata !182}
!267 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEt", metadata !148, i32 1613, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1613} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !248, metadata !167, metadata !186}
!270 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEi", metadata !148, i32 1614, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1614} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{metadata !248, metadata !167, metadata !162}
!273 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEj", metadata !148, i32 1615, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1615} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{metadata !248, metadata !167, metadata !140}
!276 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEx", metadata !148, i32 1616, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1616} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{metadata !248, metadata !167, metadata !204}
!279 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEy", metadata !148, i32 1617, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1617} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !248, metadata !167, metadata !209}
!282 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEcvhEv", metadata !148, i32 1655, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1655} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{metadata !285, metadata !289}
!285 = metadata !{i32 786454, metadata !147, metadata !"RetType", metadata !148, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_typedef ]
!286 = metadata !{i32 786454, metadata !287, metadata !"Type", metadata !148, i32 1371, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ]
!287 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !148, i32 1370, i64 8, i64 8, i32 0, i32 0, null, metadata !288, i32 0, null, metadata !160} ; [ DW_TAG_class_type ]
!288 = metadata !{i32 0}
!289 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !238} ; [ DW_TAG_pointer_type ]
!290 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_boolEv", metadata !148, i32 1661, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1661} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{metadata !123, metadata !289}
!293 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ucharEv", metadata !148, i32 1662, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1662} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !178, metadata !289}
!296 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_charEv", metadata !148, i32 1663, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1663} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{metadata !174, metadata !289}
!299 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_ushortEv", metadata !148, i32 1664, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1664} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{metadata !186, metadata !289}
!302 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_shortEv", metadata !148, i32 1665, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1665} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{metadata !182, metadata !289}
!305 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6to_intEv", metadata !148, i32 1666, metadata !306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1666} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!307 = metadata !{metadata !162, metadata !289}
!308 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_uintEv", metadata !148, i32 1667, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1667} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!310 = metadata !{metadata !140, metadata !289}
!311 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_longEv", metadata !148, i32 1668, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1668} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{metadata !196, metadata !289}
!314 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ulongEv", metadata !148, i32 1669, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1669} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{metadata !200, metadata !289}
!317 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_int64Ev", metadata !148, i32 1670, metadata !318, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1670} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!319 = metadata !{metadata !204, metadata !289}
!320 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_uint64Ev", metadata !148, i32 1671, metadata !321, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1671} ; [ DW_TAG_subprogram ]
!321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!322 = metadata !{metadata !209, metadata !289}
!323 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_doubleEv", metadata !148, i32 1672, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1672} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{metadata !222, metadata !289}
!326 = metadata !{i32 786478, i32 0, metadata !147, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !148, i32 1686, metadata !306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1686} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786478, i32 0, metadata !147, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !148, i32 1687, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1687} ; [ DW_TAG_subprogram ]
!328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!329 = metadata !{metadata !162, metadata !330}
!330 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !243} ; [ DW_TAG_pointer_type ]
!331 = metadata !{i32 786478, i32 0, metadata !147, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7reverseEv", metadata !148, i32 1692, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1692} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !248, metadata !167}
!334 = metadata !{i32 786478, i32 0, metadata !147, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6iszeroEv", metadata !148, i32 1698, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1698} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786478, i32 0, metadata !147, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7is_zeroEv", metadata !148, i32 1703, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1703} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786478, i32 0, metadata !147, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4signEv", metadata !148, i32 1708, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1708} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786478, i32 0, metadata !147, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5clearEi", metadata !148, i32 1716, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1716} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786478, i32 0, metadata !147, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE6invertEi", metadata !148, i32 1722, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1722} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786478, i32 0, metadata !147, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4testEi", metadata !148, i32 1730, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1730} ; [ DW_TAG_subprogram ]
!340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!341 = metadata !{metadata !123, metadata !289, metadata !162}
!342 = metadata !{i32 786478, i32 0, metadata !147, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEi", metadata !148, i32 1736, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1736} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 786478, i32 0, metadata !147, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEib", metadata !148, i32 1742, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1742} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{null, metadata !167, metadata !162, metadata !123}
!346 = metadata !{i32 786478, i32 0, metadata !147, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7lrotateEi", metadata !148, i32 1749, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1749} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786478, i32 0, metadata !147, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7rrotateEi", metadata !148, i32 1758, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1758} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786478, i32 0, metadata !147, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7set_bitEib", metadata !148, i32 1766, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1766} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786478, i32 0, metadata !147, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7get_bitEi", metadata !148, i32 1771, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1771} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786478, i32 0, metadata !147, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5b_notEv", metadata !148, i32 1776, metadata !165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1776} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786478, i32 0, metadata !147, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE17countLeadingZerosEv", metadata !148, i32 1783, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1783} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{metadata !162, metadata !167}
!354 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEv", metadata !148, i32 1840, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1840} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEv", metadata !148, i32 1844, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1844} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEi", metadata !148, i32 1852, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1852} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{metadata !238, metadata !167, metadata !162}
!359 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEi", metadata !148, i32 1857, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1857} ; [ DW_TAG_subprogram ]
!360 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEpsEv", metadata !148, i32 1866, metadata !361, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1866} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!362 = metadata !{metadata !147, metadata !289}
!363 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEntEv", metadata !148, i32 1872, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1872} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEngEv", metadata !148, i32 1877, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 1877} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{metadata !367, metadata !289}
!367 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !148, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!368 = metadata !{i32 786478, i32 0, metadata !147, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !148, i32 2007, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2007} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!370 = metadata !{metadata !371, metadata !167, metadata !162, metadata !162}
!371 = metadata !{i32 786434, null, metadata !"ap_range_ref<1, false>", metadata !148, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!372 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEclEii", metadata !148, i32 2013, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2013} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786478, i32 0, metadata !147, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !148, i32 2019, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2019} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{metadata !371, metadata !289, metadata !162, metadata !162}
!376 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEclEii", metadata !148, i32 2025, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2025} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEixEi", metadata !148, i32 2044, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2044} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{metadata !380, metadata !167, metadata !162}
!380 = metadata !{i32 786434, null, metadata !"ap_bit_ref<1, false>", metadata !148, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!381 = metadata !{i32 786478, i32 0, metadata !147, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEixEi", metadata !148, i32 2058, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2058} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786478, i32 0, metadata !147, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !148, i32 2072, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2072} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 786478, i32 0, metadata !147, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !148, i32 2086, metadata !340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2086} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786478, i32 0, metadata !147, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !148, i32 2266, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2266} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{metadata !123, metadata !167}
!387 = metadata !{i32 786478, i32 0, metadata !147, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !148, i32 2269, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2269} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786478, i32 0, metadata !147, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !148, i32 2272, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2272} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786478, i32 0, metadata !147, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !148, i32 2275, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2275} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786478, i32 0, metadata !147, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !148, i32 2278, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2278} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786478, i32 0, metadata !147, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !148, i32 2281, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2281} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786478, i32 0, metadata !147, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !148, i32 2285, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2285} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786478, i32 0, metadata !147, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !148, i32 2288, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2288} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786478, i32 0, metadata !147, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !148, i32 2291, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2291} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786478, i32 0, metadata !147, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !148, i32 2294, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2294} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786478, i32 0, metadata !147, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !148, i32 2297, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2297} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786478, i32 0, metadata !147, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !148, i32 2300, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2300} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !148, i32 2307, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2307} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{null, metadata !289, metadata !401, metadata !162, metadata !402, metadata !123}
!401 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ]
!402 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !148, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!403 = metadata !{metadata !404, metadata !405, metadata !406, metadata !407}
!404 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!405 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!406 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!407 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!408 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringE8BaseModeb", metadata !148, i32 2334, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2334} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{metadata !401, metadata !289, metadata !402, metadata !123}
!411 = metadata !{i32 786478, i32 0, metadata !147, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEab", metadata !148, i32 2338, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 2338} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !401, metadata !289, metadata !174, metadata !123}
!414 = metadata !{metadata !415, metadata !163, metadata !416}
!415 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !162, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!416 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !123, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!417 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 185, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 185} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{null, metadata !420}
!420 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !143} ; [ DW_TAG_pointer_type ]
!421 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 247, metadata !422, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 247} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!423 = metadata !{null, metadata !420, metadata !123}
!424 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 248, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 248} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{null, metadata !420, metadata !174}
!427 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 249, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 249} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{null, metadata !420, metadata !178}
!430 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 250, metadata !431, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 250} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!432 = metadata !{null, metadata !420, metadata !182}
!433 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 251, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 251} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{null, metadata !420, metadata !186}
!436 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 252, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 252} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{null, metadata !420, metadata !162}
!439 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 253, metadata !440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 253} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!441 = metadata !{null, metadata !420, metadata !140}
!442 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 254, metadata !443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 254} ; [ DW_TAG_subprogram ]
!443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!444 = metadata !{null, metadata !420, metadata !196}
!445 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 255, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 255} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{null, metadata !420, metadata !200}
!448 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 256, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 256} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{null, metadata !420, metadata !210}
!451 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 257, metadata !452, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 257} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!453 = metadata !{null, metadata !420, metadata !205}
!454 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 258, metadata !455, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 258} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!456 = metadata !{null, metadata !420, metadata !214}
!457 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 259, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 259} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{null, metadata !420, metadata !90}
!460 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 260, metadata !461, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 260} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!462 = metadata !{null, metadata !420, metadata !222}
!463 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 262, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 262} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!465 = metadata !{null, metadata !420, metadata !100}
!466 = metadata !{i32 786478, i32 0, metadata !143, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !144, i32 263, metadata !467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 263} ; [ DW_TAG_subprogram ]
!467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!468 = metadata !{null, metadata !420, metadata !100, metadata !174}
!469 = metadata !{i32 786478, i32 0, metadata !143, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !144, i32 266, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 266} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!471 = metadata !{null, metadata !472, metadata !474}
!472 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !473} ; [ DW_TAG_pointer_type ]
!473 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_volatile_type ]
!474 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !475} ; [ DW_TAG_reference_type ]
!475 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_const_type ]
!476 = metadata !{i32 786478, i32 0, metadata !143, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERVKS0_", metadata !144, i32 270, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 270} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!478 = metadata !{null, metadata !472, metadata !479}
!479 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !480} ; [ DW_TAG_reference_type ]
!480 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_const_type ]
!481 = metadata !{i32 786478, i32 0, metadata !143, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERVKS0_", metadata !144, i32 274, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 274} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!483 = metadata !{metadata !484, metadata !420, metadata !479}
!484 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_reference_type ]
!485 = metadata !{i32 786478, i32 0, metadata !143, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERKS0_", metadata !144, i32 279, metadata !486, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !95, i32 279} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!487 = metadata !{metadata !484, metadata !420, metadata !474}
!488 = metadata !{metadata !415}
!489 = metadata !{i32 16, i32 8, metadata !80, null}
!490 = metadata !{i32 786689, metadata !80, metadata !"b1", metadata !81, i32 100663311, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!491 = metadata !{i32 15, i32 8, metadata !80, null}
!492 = metadata !{i32 786689, metadata !80, metadata !"b0", metadata !81, i32 83886094, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!493 = metadata !{i32 14, i32 8, metadata !80, null}
!494 = metadata !{i32 786689, metadata !80, metadata !"a2", metadata !81, i32 67108877, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!495 = metadata !{i32 13, i32 8, metadata !80, null}
!496 = metadata !{i32 786689, metadata !80, metadata !"a1", metadata !81, i32 50331660, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!497 = metadata !{i32 12, i32 8, metadata !80, null}
!498 = metadata !{i32 790531, metadata !499, metadata !"in.V", null, i32 10, metadata !500, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!499 = metadata !{i32 786689, metadata !80, metadata !"in", metadata !81, i32 16777226, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!500 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ]
!501 = metadata !{i32 786438, metadata !86, metadata !"stream<float>", metadata !87, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !502, i32 0, null, metadata !141} ; [ DW_TAG_class_field_type ]
!502 = metadata !{metadata !89}
!503 = metadata !{i32 10, i32 17, metadata !80, null}
!504 = metadata !{i32 790531, metadata !505, metadata !"out.V", null, i32 11, metadata !500, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!505 = metadata !{i32 786689, metadata !80, metadata !"out", metadata !81, i32 33554443, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!506 = metadata !{i32 11, i32 17, metadata !80, null}
!507 = metadata !{i32 19, i32 1, metadata !508, null}
!508 = metadata !{i32 786443, metadata !80, i32 18, i32 3, metadata !81, i32 0} ; [ DW_TAG_lexical_block ]
!509 = metadata !{i32 20, i32 1, metadata !508, null}
!510 = metadata !{i32 21, i32 1, metadata !508, null}
!511 = metadata !{i32 22, i32 1, metadata !508, null}
!512 = metadata !{i32 23, i32 1, metadata !508, null}
!513 = metadata !{i32 24, i32 1, metadata !508, null}
!514 = metadata !{i32 25, i32 1, metadata !508, null}
!515 = metadata !{i32 26, i32 1, metadata !508, null}
!516 = metadata !{i32 27, i32 1, metadata !508, null}
!517 = metadata !{i32 29, i32 6, metadata !508, null}
!518 = metadata !{i32 790531, metadata !519, metadata !"stream<float>.V", null, i32 101, metadata !522, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!519 = metadata !{i32 786689, metadata !520, metadata !"this", metadata !87, i32 16777317, metadata !521, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!520 = metadata !{i32 786478, i32 0, metadata !86, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !87, i32 101, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !111, metadata !95, i32 101} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ]
!522 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ]
!523 = metadata !{i32 101, i32 48, metadata !520, metadata !524}
!524 = metadata !{i32 37, i32 2, metadata !508, null}
!525 = metadata !{i32 790531, metadata !526, metadata !"stream<float>.V", null, i32 123, metadata !522, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!526 = metadata !{i32 786689, metadata !527, metadata !"this", metadata !87, i32 16777339, metadata !521, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!527 = metadata !{i32 786478, i32 0, metadata !86, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !87, i32 123, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !126, metadata !95, i32 123} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 123, i32 48, metadata !527, metadata !529}
!529 = metadata !{i32 102, i32 9, metadata !530, metadata !524}
!530 = metadata !{i32 786443, metadata !520, i32 101, i32 82, metadata !87, i32 3} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 125, i32 9, metadata !532, metadata !529}
!532 = metadata !{i32 786443, metadata !527, i32 123, i32 73, metadata !87, i32 4} ; [ DW_TAG_lexical_block ]
!533 = metadata !{i32 786688, metadata !532, metadata !"tmp", metadata !87, i32 124, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 786688, metadata !508, metadata !"input", metadata !81, i32 36, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!535 = metadata !{i32 126, i32 9, metadata !532, metadata !529}
!536 = metadata !{i32 39, i32 57, metadata !508, null}
!537 = metadata !{i32 786688, metadata !508, metadata !"output", metadata !81, i32 39, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!538 = metadata !{i32 41, i32 2, metadata !508, null}
!539 = metadata !{i32 42, i32 2, metadata !508, null}
!540 = metadata !{i32 43, i32 2, metadata !508, null}
!541 = metadata !{i32 44, i32 2, metadata !508, null}
!542 = metadata !{i32 790531, metadata !543, metadata !"stream<float>.V", null, i32 105, metadata !522, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!543 = metadata !{i32 786689, metadata !544, metadata !"this", metadata !87, i32 16777321, metadata !521, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!544 = metadata !{i32 786478, i32 0, metadata !86, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !87, i32 105, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !115, metadata !95, i32 105} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 105, i32 48, metadata !544, metadata !546}
!546 = metadata !{i32 46, i32 2, metadata !508, null}
!547 = metadata !{i32 790531, metadata !548, metadata !"stream<float>.V", null, i32 144, metadata !522, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!548 = metadata !{i32 786689, metadata !549, metadata !"this", metadata !87, i32 16777360, metadata !521, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!549 = metadata !{i32 786478, i32 0, metadata !86, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !87, i32 144, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !133, metadata !95, i32 144} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 144, i32 48, metadata !549, metadata !551}
!551 = metadata !{i32 106, i32 9, metadata !552, metadata !546}
!552 = metadata !{i32 786443, metadata !544, i32 105, i32 88, metadata !87, i32 1} ; [ DW_TAG_lexical_block ]
!553 = metadata !{i32 786688, metadata !554, metadata !"tmp", metadata !87, i32 145, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!554 = metadata !{i32 786443, metadata !549, i32 144, i32 79, metadata !87, i32 2} ; [ DW_TAG_lexical_block ]
!555 = metadata !{i32 145, i32 31, metadata !554, metadata !551}
!556 = metadata !{i32 146, i32 9, metadata !554, metadata !551}
!557 = metadata !{i32 47, i32 1, metadata !508, null}
