; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/mods/biquad/biquad/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y2 = internal unnamed_addr global float 0.000000e+00, align 4
@y1 = internal unnamed_addr global float 0.000000e+00, align 4
@x2 = internal unnamed_addr global float 0.000000e+00, align 4
@x1 = internal unnamed_addr global float 0.000000e+00, align 4
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@biquad_str = internal unnamed_addr constant [7 x i8] c"biquad\00"
@p_str5 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  %user_writing_V_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %user_writing_V)
  %b2_read = call float @_ssdm_op_Read.s_axilite.float(float %b2)
  %b1_read = call float @_ssdm_op_Read.s_axilite.float(float %b1)
  %b0_read = call float @_ssdm_op_Read.s_axilite.float(float %b0)
  %a2_read = call float @_ssdm_op_Read.s_axilite.float(float %a2)
  %a1_read = call float @_ssdm_op_Read.s_axilite.float(float %a1)
  call void (...)* @_ssdm_op_SpecInterface(i1 %user_writing_V, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %b2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %b1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %b0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %a2, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %a1, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %out_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %in_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br i1 %user_writing_V_read, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %tmp_4 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %in_V)
  %tmp_6 = fmul float %tmp_4, %b0_read
  %x1_load = load float* @x1, align 4
  %tmp_7 = fmul float %x1_load, %b1_read
  %tmp_8 = fadd float %tmp_6, %tmp_7
  %x2_load = load float* @x2, align 4
  %tmp_9 = fmul float %x2_load, %b2_read
  %tmp_s = fadd float %tmp_8, %tmp_9
  %y1_load = load float* @y1, align 4
  %tmp_1 = fmul float %y1_load, %a1_read
  %tmp_2 = fsub float %tmp_s, %tmp_1
  %y2_load = load float* @y2, align 4
  %tmp_3 = fmul float %y2_load, %a2_read
  %output = fsub float %tmp_2, %tmp_3
  store float %y1_load, float* @y2, align 4
  store float %output, float* @y1, align 4
  store float %x1_load, float* @x2, align 4
  store float %tmp_4, float* @x1, align 4
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %out_V, float %output)
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

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
