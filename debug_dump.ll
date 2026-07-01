; ModuleID = 'tests/test_treemap.npk'
source_filename = "tests/test_treemap.npk"

%Numeric_vtable_t = type {}
%Display_vtable_t = type {}

@Numeric_vtable_int8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_fix256 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt64 = internal constant %Numeric_vtable_t zeroinitializer
@Display_vtable_int8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_fix256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_trit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tryte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nyte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_bool = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_string = internal constant %Display_vtable_t zeroinitializer

define linkonce_odr { i8, ptr, i8 } @mem.store64(i64 %addr, i64 %val) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %val3 = load i64, ptr %val.addr, align 4
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  store i64 %val3, ptr %arrayidx, align 4
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @mem.load64(i64 %addr) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %elem, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @mem.store32(i64 %addr, i32 %val) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %val3 = load i32, ptr %val.addr, align 4
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i32, ptr %ptr.ptr, i64 0
  store i32 %val3, ptr %arrayidx, align 4
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @mem.load32(i64 %addr) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  %val_trunc = trunc i64 %elem to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %val_trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @mem.store8(i64 %addr, i8 %val) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %val.addr = alloca i8, align 1
  store i8 %val, ptr %val.addr, align 1
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %val3 = load i8, ptr %val.addr, align 1
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i8, ptr %ptr.ptr, i64 0
  store i8 %val3, ptr %arrayidx, align 1
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @mem.load8(i64 %addr) {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 4
  %ptr = alloca ptr, align 8
  %addr1 = load i64, ptr %addr.addr, align 4
  %addr2 = load i64, ptr %addr.addr, align 4
  %cast.inttoptr = inttoptr i64 %addr2 to ptr
  store ptr %cast.inttoptr, ptr %ptr, align 8
  %ptr.ptr = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr i64, ptr %ptr.ptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  %val_trunc = trunc i64 %elem to i8
  %result.val = insertvalue { i8, ptr, i8 } undef, i8 %val_trunc, 0
  %result.err = insertvalue { i8, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i8, ptr, i8 } %result.err, i8 0, 2
  ret { i8, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @mem.str_eq(i64 %a, i64 %b) {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 4
  %b.addr = alloca i64, align 8
  store i64 %b, ptr %b.addr, align 4
  %a1 = load i64, ptr %a.addr, align 4
  %b2 = load i64, ptr %b.addr, align 4
  %eqtmp = icmp eq i64 %a1, %b2
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %a3 = load i64, ptr %a.addr, align 4
  %eqtmp4 = icmp eq i64 %a3, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  ret { i8, ptr, i8 } zeroinitializer

ifcont7:                                          ; preds = %ifcont
  %b8 = load i64, ptr %b.addr, align 4
  %eqtmp9 = icmp eq i64 %b8, 0
  %ifcond10 = icmp ne i1 %eqtmp9, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %ifcont7
  ret { i8, ptr, i8 } zeroinitializer

ifcont12:                                         ; preds = %ifcont7
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %ca = alloca i8, align 1
  %a13 = load i64, ptr %a.addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.load8(i64 %a13)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  store i8 %raw.value, ptr %ca, align 1
  %cb = alloca i8, align 1
  %b14 = load i64, ptr %b.addr, align 4
  %calltmp15 = call { i8, ptr, i8 } @mem.load8(i64 %b14)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  store i8 %raw.value16, ptr %cb, align 1
  br label %whilecond

whilecond:                                        ; preds = %ifcont29, %ifcont12
  %ca17 = load i8, ptr %ca, align 1
  %netmp = icmp ne i8 %ca17, 0
  %whilecond18 = icmp ne i1 %netmp, false
  br i1 %whilecond18, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %cb19 = load i8, ptr %cb, align 1
  %eqtmp20 = icmp eq i8 %cb19, 0
  %ifcond21 = icmp ne i1 %eqtmp20, false
  br i1 %ifcond21, label %then22, label %ifcont23

then22:                                           ; preds = %whilebody
  ret { i8, ptr, i8 } zeroinitializer

ifcont23:                                         ; preds = %whilebody
  %ca24 = load i8, ptr %ca, align 1
  %cb25 = load i8, ptr %cb, align 1
  %netmp26 = icmp ne i8 %ca24, %cb25
  %ifcond27 = icmp ne i1 %netmp26, false
  br i1 %ifcond27, label %then28, label %ifcont29

then28:                                           ; preds = %ifcont23
  ret { i8, ptr, i8 } zeroinitializer

ifcont29:                                         ; preds = %ifcont23
  %i30 = load i64, ptr %i, align 4
  %addtmp = add i64 %i30, 1
  store i64 %addtmp, ptr %i, align 4
  %a31 = load i64, ptr %a.addr, align 4
  %i32 = load i64, ptr %i, align 4
  %addtmp33 = add i64 %a31, %i32
  %calltmp34 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp33)
  %raw.value35 = extractvalue { i8, ptr, i8 } %calltmp34, 0
  store i8 %raw.value35, ptr %ca, align 1
  %b36 = load i64, ptr %b.addr, align 4
  %i37 = load i64, ptr %i, align 4
  %addtmp38 = add i64 %b36, %i37
  %calltmp39 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp38)
  %raw.value40 = extractvalue { i8, ptr, i8 } %calltmp39, 0
  store i8 %raw.value40, ptr %cb, align 1
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %ca41 = load i8, ptr %ca, align 1
  %cb42 = load i8, ptr %cb, align 1
  %eqtmp43 = icmp eq i8 %ca41, %cb42
  %ifcond44 = icmp ne i1 %eqtmp43, false
  br i1 %ifcond44, label %then45, label %ifcont46

then45:                                           ; preds = %afterwhile
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont46:                                         ; preds = %afterwhile
  ret { i8, ptr, i8 } zeroinitializer
}

declare void @npk_gc_safepoint()

define linkonce_odr i32 @__mem_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @allocator.MapAllocator_create(i64 %node_size) {
entry:
  %node_size.addr = alloca i64, align 8
  store i64 %node_size, ptr %node_size.addr, align 4
  %blk = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 64)
  store ptr %wild_ptr, ptr %blk, align 8
  %blk1 = load ptr, ptr %blk, align 8
  %eqtmp = icmp eq ptr %blk1, null
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %handle = alloca i64, align 8
  %blk2 = load ptr, ptr %blk, align 8
  %blk3 = load ptr, ptr %blk, align 8
  %cast.ptrtoint = ptrtoint ptr %blk3 to i64
  store i64 %cast.ptrtoint, ptr %handle, align 4
  %node_size4 = load i64, ptr %node_size.addr, align 4
  %lttmp = icmp slt i64 %node_size4, 8
  %ifcond5 = icmp ne i1 %lttmp, false
  br i1 %ifcond5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  store i64 8, ptr %node_size.addr, align 4
  br label %ifcont7

ifcont7:                                          ; preds = %then6, %ifcont
  %handle8 = load i64, ptr %handle, align 4
  %addtmp = add i64 %handle8, 0
  %node_size9 = load i64, ptr %node_size.addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.store64(i64 %addtmp, i64 %node_size9)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %handle10 = load i64, ptr %handle, align 4
  %addtmp11 = add i64 %handle10, 8
  %calltmp12 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp11, i64 0)
  %raw.value13 = extractvalue { i8, ptr, i8 } %calltmp12, 0
  %handle14 = load i64, ptr %handle, align 4
  %addtmp15 = add i64 %handle14, 16
  %calltmp16 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp15, i64 0)
  %raw.value17 = extractvalue { i8, ptr, i8 } %calltmp16, 0
  %handle18 = load i64, ptr %handle, align 4
  %addtmp19 = add i64 %handle18, 24
  %calltmp20 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp19, i64 32768)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %handle22 = load i64, ptr %handle, align 4
  %addtmp23 = add i64 %handle22, 32
  %calltmp24 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp23, i64 0)
  %raw.value25 = extractvalue { i8, ptr, i8 } %calltmp24, 0
  %handle26 = load i64, ptr %handle, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %handle26, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @allocator.MapAllocator_destroy(i64 %handle) {
entry:
  %handle.addr = alloca i64, align 8
  store i64 %handle, ptr %handle.addr, align 4
  %handle1 = load i64, ptr %handle.addr, align 4
  %eqtmp = icmp eq i64 %handle1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %head_block = alloca i64, align 8
  %handle2 = load i64, ptr %handle.addr, align 4
  %addtmp = add i64 %handle2, 8
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head_block, align 4
  %block_size = alloca i64, align 8
  %handle3 = load i64, ptr %handle.addr, align 4
  %addtmp4 = add i64 %handle3, 24
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %block_size, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %head_block7 = load i64, ptr %head_block, align 4
  %netmp = icmp ne i64 %head_block7, 0
  %whilecond8 = icmp ne i1 %netmp, false
  br i1 %whilecond8, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %next_block = alloca i64, align 8
  %head_block9 = load i64, ptr %head_block, align 4
  %calltmp10 = call { i64, ptr, i8 } @mem.load64(i64 %head_block9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %next_block, align 4
  %head_block12 = load i64, ptr %head_block, align 4
  %cast.inttoptr = inttoptr i64 %head_block12 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  %next_block13 = load i64, ptr %next_block, align 4
  store i64 %next_block13, ptr %head_block, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %handle14 = load i64, ptr %handle.addr, align 4
  %cast.inttoptr15 = inttoptr i64 %handle14 to ptr
  call void @npk_free(ptr %cast.inttoptr15)
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @allocator.MapAllocator_alloc(i64 %handle) {
entry:
  %handle.addr = alloca i64, align 8
  store i64 %handle, ptr %handle.addr, align 4
  %free_head = alloca i64, align 8
  %handle1 = load i64, ptr %handle.addr, align 4
  %addtmp = add i64 %handle1, 32
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %free_head, align 4
  %node_size = alloca i64, align 8
  %handle2 = load i64, ptr %handle.addr, align 4
  %addtmp3 = add i64 %handle2, 0
  %calltmp4 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %node_size, align 4
  %free_head6 = load i64, ptr %free_head, align 4
  %netmp = icmp ne i64 %free_head6, 0
  %ifcond = icmp ne i1 %netmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %next_free = alloca i64, align 8
  %free_head7 = load i64, ptr %free_head, align 4
  %calltmp8 = call { i64, ptr, i8 } @mem.load64(i64 %free_head7)
  %raw.value9 = extractvalue { i64, ptr, i8 } %calltmp8, 0
  store i64 %raw.value9, ptr %next_free, align 4
  %handle10 = load i64, ptr %handle.addr, align 4
  %addtmp11 = add i64 %handle10, 32
  %next_free12 = load i64, ptr %next_free, align 4
  %calltmp13 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp11, i64 %next_free12)
  %raw.value14 = extractvalue { i8, ptr, i8 } %calltmp13, 0
  %free_head15 = load i64, ptr %free_head, align 4
  %cast.inttoptr = inttoptr i64 %free_head15 to ptr
  %node_size16 = load i64, ptr %node_size, align 4
  call void @llvm.memset.p0.i64(ptr %cast.inttoptr, i8 0, i64 %node_size16, i1 false)
  %cast.ptrtoint = ptrtoint ptr %cast.inttoptr to i64
  %free_head17 = load i64, ptr %free_head, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %free_head17, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %block_size = alloca i64, align 8
  %handle18 = load i64, ptr %handle.addr, align 4
  %addtmp19 = add i64 %handle18, 24
  %calltmp20 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp19)
  %raw.value21 = extractvalue { i64, ptr, i8 } %calltmp20, 0
  store i64 %raw.value21, ptr %block_size, align 4
  %head_block = alloca i64, align 8
  %handle22 = load i64, ptr %handle.addr, align 4
  %addtmp23 = add i64 %handle22, 8
  %calltmp24 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp23)
  %raw.value25 = extractvalue { i64, ptr, i8 } %calltmp24, 0
  store i64 %raw.value25, ptr %head_block, align 4
  %offset = alloca i64, align 8
  %handle26 = load i64, ptr %handle.addr, align 4
  %addtmp27 = add i64 %handle26, 16
  %calltmp28 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp27)
  %raw.value29 = extractvalue { i64, ptr, i8 } %calltmp28, 0
  store i64 %raw.value29, ptr %offset, align 4
  %head_block30 = load i64, ptr %head_block, align 4
  %eqtmp = icmp eq i64 %head_block30, 0
  %ifcond31 = icmp ne i1 %eqtmp, false
  br i1 %ifcond31, label %then32, label %else

then32:                                           ; preds = %ifcont
  %req_size = alloca i64, align 8
  %node_size33 = load i64, ptr %node_size, align 4
  %addtmp34 = add i64 %node_size33, 8
  store i64 %addtmp34, ptr %req_size, align 4
  %required_size = alloca i64, align 8
  %req_size35 = load i64, ptr %req_size, align 4
  %block_size36 = load i64, ptr %block_size, align 4
  %gttmp = icmp sgt i64 %req_size35, %block_size36
  %terncond = icmp ne i1 %gttmp, false
  br i1 %terncond, label %tern.true, label %tern.false

tern.true:                                        ; preds = %then32
  %req_size37 = load i64, ptr %req_size, align 4
  br label %tern.cont

tern.false:                                       ; preds = %then32
  %block_size38 = load i64, ptr %block_size, align 4
  br label %tern.cont

tern.cont:                                        ; preds = %tern.false, %tern.true
  %ternphi = phi i64 [ %req_size37, %tern.true ], [ %block_size38, %tern.false ]
  store i64 %ternphi, ptr %required_size, align 4
  %blk = call ptr @npk_alloc(i64 8)
  %required_size39 = load i64, ptr %required_size, align 4
  %wild_ptr = call ptr @npk_alloc(i64 %required_size39)
  store ptr %wild_ptr, ptr %blk, align 8
  %blk40 = load ptr, ptr %blk, align 8
  %eqtmp41 = icmp eq ptr %blk40, null
  %ifcond42 = icmp ne i1 %eqtmp41, false
  br i1 %ifcond42, label %then43, label %ifcont44

then43:                                           ; preds = %tern.cont
  ret { i64, ptr, i8 } zeroinitializer

ifcont44:                                         ; preds = %tern.cont
  %new_block = alloca i64, align 8
  %blk45 = load ptr, ptr %blk, align 8
  %blk46 = load ptr, ptr %blk, align 8
  %cast.ptrtoint47 = ptrtoint ptr %blk46 to i64
  store i64 %cast.ptrtoint47, ptr %new_block, align 4
  %new_block48 = load i64, ptr %new_block, align 4
  %calltmp49 = call { i8, ptr, i8 } @mem.store64(i64 %new_block48, i64 0)
  %raw.value50 = extractvalue { i8, ptr, i8 } %calltmp49, 0
  %handle51 = load i64, ptr %handle.addr, align 4
  %addtmp52 = add i64 %handle51, 8
  %new_block53 = load i64, ptr %new_block, align 4
  %calltmp54 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp52, i64 %new_block53)
  %raw.value55 = extractvalue { i8, ptr, i8 } %calltmp54, 0
  %new_block56 = load i64, ptr %new_block, align 4
  store i64 %new_block56, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle57 = load i64, ptr %handle.addr, align 4
  %addtmp58 = add i64 %handle57, 16
  %offset59 = load i64, ptr %offset, align 4
  %calltmp60 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp58, i64 %offset59)
  %raw.value61 = extractvalue { i8, ptr, i8 } %calltmp60, 0
  br label %ifcont111

else:                                             ; preds = %ifcont
  %offset62 = load i64, ptr %offset, align 4
  %node_size63 = load i64, ptr %node_size, align 4
  %addtmp64 = add i64 %offset62, %node_size63
  %block_size65 = load i64, ptr %block_size, align 4
  %gttmp66 = icmp sgt i64 %addtmp64, %block_size65
  %ifcond67 = icmp ne i1 %gttmp66, false
  br i1 %ifcond67, label %then68, label %ifcont110

then68:                                           ; preds = %else
  %req_size69 = alloca i64, align 8
  %node_size70 = load i64, ptr %node_size, align 4
  %addtmp71 = add i64 %node_size70, 8
  store i64 %addtmp71, ptr %req_size69, align 4
  %required_size72 = alloca i64, align 8
  %req_size73 = load i64, ptr %req_size69, align 4
  %block_size74 = load i64, ptr %block_size, align 4
  %gttmp75 = icmp sgt i64 %req_size73, %block_size74
  %terncond76 = icmp ne i1 %gttmp75, false
  br i1 %terncond76, label %tern.true77, label %tern.false79

tern.true77:                                      ; preds = %then68
  %req_size78 = load i64, ptr %req_size69, align 4
  br label %tern.cont81

tern.false79:                                     ; preds = %then68
  %block_size80 = load i64, ptr %block_size, align 4
  br label %tern.cont81

tern.cont81:                                      ; preds = %tern.false79, %tern.true77
  %ternphi82 = phi i64 [ %req_size78, %tern.true77 ], [ %block_size80, %tern.false79 ]
  store i64 %ternphi82, ptr %required_size72, align 4
  %blk83 = call ptr @npk_alloc(i64 8)
  %required_size84 = load i64, ptr %required_size72, align 4
  %wild_ptr85 = call ptr @npk_alloc(i64 %required_size84)
  store ptr %wild_ptr85, ptr %blk83, align 8
  %blk86 = load ptr, ptr %blk83, align 8
  %eqtmp87 = icmp eq ptr %blk86, null
  %ifcond88 = icmp ne i1 %eqtmp87, false
  br i1 %ifcond88, label %then89, label %ifcont90

then89:                                           ; preds = %tern.cont81
  ret { i64, ptr, i8 } zeroinitializer

ifcont90:                                         ; preds = %tern.cont81
  %new_block91 = alloca i64, align 8
  %blk92 = load ptr, ptr %blk83, align 8
  %blk93 = load ptr, ptr %blk83, align 8
  %cast.ptrtoint94 = ptrtoint ptr %blk93 to i64
  store i64 %cast.ptrtoint94, ptr %new_block91, align 4
  %new_block95 = load i64, ptr %new_block91, align 4
  %head_block96 = load i64, ptr %head_block, align 4
  %calltmp97 = call { i8, ptr, i8 } @mem.store64(i64 %new_block95, i64 %head_block96)
  %raw.value98 = extractvalue { i8, ptr, i8 } %calltmp97, 0
  %handle99 = load i64, ptr %handle.addr, align 4
  %addtmp100 = add i64 %handle99, 8
  %new_block101 = load i64, ptr %new_block91, align 4
  %calltmp102 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp100, i64 %new_block101)
  %raw.value103 = extractvalue { i8, ptr, i8 } %calltmp102, 0
  %new_block104 = load i64, ptr %new_block91, align 4
  store i64 %new_block104, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle105 = load i64, ptr %handle.addr, align 4
  %addtmp106 = add i64 %handle105, 16
  %offset107 = load i64, ptr %offset, align 4
  %calltmp108 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp106, i64 %offset107)
  %raw.value109 = extractvalue { i8, ptr, i8 } %calltmp108, 0
  br label %ifcont110

ifcont110:                                        ; preds = %ifcont90, %else
  br label %ifcont111

ifcont111:                                        ; preds = %ifcont110, %ifcont44
  %ptr = alloca i64, align 8
  %head_block112 = load i64, ptr %head_block, align 4
  %offset113 = load i64, ptr %offset, align 4
  %addtmp114 = add i64 %head_block112, %offset113
  store i64 %addtmp114, ptr %ptr, align 4
  %handle115 = load i64, ptr %handle.addr, align 4
  %addtmp116 = add i64 %handle115, 16
  %offset117 = load i64, ptr %offset, align 4
  %node_size118 = load i64, ptr %node_size, align 4
  %addtmp119 = add i64 %offset117, %node_size118
  %calltmp120 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp116, i64 %addtmp119)
  %raw.value121 = extractvalue { i8, ptr, i8 } %calltmp120, 0
  %ptr122 = load i64, ptr %ptr, align 4
  %cast.inttoptr123 = inttoptr i64 %ptr122 to ptr
  %node_size124 = load i64, ptr %node_size, align 4
  call void @llvm.memset.p0.i64(ptr %cast.inttoptr123, i8 0, i64 %node_size124, i1 false)
  %cast.ptrtoint125 = ptrtoint ptr %cast.inttoptr123 to i64
  %ptr126 = load i64, ptr %ptr, align 4
  %result.val127 = insertvalue { i64, ptr, i8 } undef, i64 %ptr126, 0
  %result.err128 = insertvalue { i64, ptr, i8 } %result.val127, ptr null, 1
  %result.is_error129 = insertvalue { i64, ptr, i8 } %result.err128, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error129
}

define linkonce_odr { i8, ptr, i8 } @allocator.MapAllocator_free(i64 %handle, i64 %ptr) {
entry:
  %handle.addr = alloca i64, align 8
  store i64 %handle, ptr %handle.addr, align 4
  %ptr.addr = alloca i64, align 8
  store i64 %ptr, ptr %ptr.addr, align 4
  %ptr1 = load i64, ptr %ptr.addr, align 4
  %eqtmp = icmp eq i64 %ptr1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %free_head = alloca i64, align 8
  %handle2 = load i64, ptr %handle.addr, align 4
  %addtmp = add i64 %handle2, 32
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %free_head, align 4
  %ptr3 = load i64, ptr %ptr.addr, align 4
  %free_head4 = load i64, ptr %free_head, align 4
  %calltmp5 = call { i8, ptr, i8 } @mem.store64(i64 %ptr3, i64 %free_head4)
  %raw.value6 = extractvalue { i8, ptr, i8 } %calltmp5, 0
  %handle7 = load i64, ptr %handle.addr, align 4
  %addtmp8 = add i64 %handle7, 32
  %ptr9 = load i64, ptr %ptr.addr, align 4
  %calltmp10 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp8, i64 %ptr9)
  %raw.value11 = extractvalue { i8, ptr, i8 } %calltmp10, 0
  ret { i8, ptr, i8 } zeroinitializer
}

declare ptr @npk_alloc(i64)

declare void @npk_free(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define linkonce_odr i32 @__allocator_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @treemap.treemap_create() {
entry:
  %allocator = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @allocator.MapAllocator_create(i64 32)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator1 = load i64, ptr %allocator, align 4
  %eqtmp = icmp eq i64 %allocator1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %header_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 24)
  store ptr %wild_ptr, ptr %header_ptr, align 8
  %header_ptr2 = load ptr, ptr %header_ptr, align 8
  %header_ptr3 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %header_ptr3 to i64
  %eqtmp4 = icmp eq i64 %cast.ptrtoint, 0
  %ifcond5 = icmp ne i1 %eqtmp4, false
  br i1 %ifcond5, label %then6, label %ifcont10

then6:                                            ; preds = %ifcont
  %allocator7 = load i64, ptr %allocator, align 4
  %calltmp8 = call { i8, ptr, i8 } @allocator.MapAllocator_destroy(i64 %allocator7)
  %raw.value9 = extractvalue { i8, ptr, i8 } %calltmp8, 0
  ret { i64, ptr, i8 } zeroinitializer

ifcont10:                                         ; preds = %ifcont
  %h_addr = alloca i64, align 8
  %header_ptr11 = load ptr, ptr %header_ptr, align 8
  %header_ptr12 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint13 = ptrtoint ptr %header_ptr12 to i64
  store i64 %cast.ptrtoint13, ptr %h_addr, align 4
  %h_addr14 = load i64, ptr %h_addr, align 4
  %calltmp15 = call { i8, ptr, i8 } @mem.store64(i64 %h_addr14, i64 0)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  %h_addr17 = load i64, ptr %h_addr, align 4
  %addtmp = add i64 %h_addr17, 8
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp, i64 0)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %h_addr20 = load i64, ptr %h_addr, align 4
  %addtmp21 = add i64 %h_addr20, 16
  %allocator22 = load i64, ptr %allocator, align 4
  %calltmp23 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp21, i64 %allocator22)
  %raw.value24 = extractvalue { i8, ptr, i8 } %calltmp23, 0
  %h_addr25 = load i64, ptr %h_addr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %h_addr25, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @treemap.treemap_put(i64 %map, i64 %key, i64 %val) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %root = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %root, align 4
  %allocator = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %allocator, align 4
  %root5 = load i64, ptr %root, align 4
  %eqtmp = icmp eq i64 %root5, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont38

then:                                             ; preds = %entry
  %new_node = alloca i64, align 8
  %allocator6 = load i64, ptr %allocator, align 4
  %calltmp7 = call { i64, ptr, i8 } @allocator.MapAllocator_alloc(i64 %allocator6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  store i64 %raw.value8, ptr %new_node, align 4
  %new_node9 = load i64, ptr %new_node, align 4
  %eqtmp10 = icmp eq i64 %new_node9, 0
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont

then12:                                           ; preds = %then
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %then
  %new_node13 = load i64, ptr %new_node, align 4
  %key14 = load i64, ptr %key.addr, align 4
  %calltmp15 = call { i8, ptr, i8 } @mem.store64(i64 %new_node13, i64 %key14)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  %new_node17 = load i64, ptr %new_node, align 4
  %addtmp18 = add i64 %new_node17, 8
  %val19 = load i64, ptr %val.addr, align 4
  %calltmp20 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp18, i64 %val19)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %new_node22 = load i64, ptr %new_node, align 4
  %addtmp23 = add i64 %new_node22, 16
  %calltmp24 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp23, i64 0)
  %raw.value25 = extractvalue { i8, ptr, i8 } %calltmp24, 0
  %new_node26 = load i64, ptr %new_node, align 4
  %addtmp27 = add i64 %new_node26, 24
  %calltmp28 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp27, i64 0)
  %raw.value29 = extractvalue { i8, ptr, i8 } %calltmp28, 0
  %map30 = load i64, ptr %map.addr, align 4
  %new_node31 = load i64, ptr %new_node, align 4
  %calltmp32 = call { i8, ptr, i8 } @mem.store64(i64 %map30, i64 %new_node31)
  %raw.value33 = extractvalue { i8, ptr, i8 } %calltmp32, 0
  %map34 = load i64, ptr %map.addr, align 4
  %addtmp35 = add i64 %map34, 8
  %calltmp36 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp35, i64 1)
  %raw.value37 = extractvalue { i8, ptr, i8 } %calltmp36, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont38:                                         ; preds = %entry
  %curr = alloca i64, align 8
  %root39 = load i64, ptr %root, align 4
  store i64 %root39, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont163, %ifcont38
  %curr40 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr40, 0
  %whilecond41 = icmp ne i1 %netmp, false
  br i1 %whilecond41, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ckey = alloca i64, align 8
  %curr42 = load i64, ptr %curr, align 4
  %calltmp43 = call { i64, ptr, i8 } @mem.load64(i64 %curr42)
  %raw.value44 = extractvalue { i64, ptr, i8 } %calltmp43, 0
  store i64 %raw.value44, ptr %ckey, align 4
  %key45 = load i64, ptr %key.addr, align 4
  %ckey46 = load i64, ptr %ckey, align 4
  %eqtmp47 = icmp eq i64 %key45, %ckey46
  %ifcond48 = icmp ne i1 %eqtmp47, false
  br i1 %ifcond48, label %then49, label %ifcont55

then49:                                           ; preds = %whilebody
  %curr50 = load i64, ptr %curr, align 4
  %addtmp51 = add i64 %curr50, 8
  %val52 = load i64, ptr %val.addr, align 4
  %calltmp53 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp51, i64 %val52)
  %raw.value54 = extractvalue { i8, ptr, i8 } %calltmp53, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont55:                                         ; preds = %whilebody
  %key56 = load i64, ptr %key.addr, align 4
  %ckey57 = load i64, ptr %ckey, align 4
  %lttmp = icmp slt i64 %key56, %ckey57
  %ifcond58 = icmp ne i1 %lttmp, false
  br i1 %ifcond58, label %then59, label %else

then59:                                           ; preds = %ifcont55
  %left = alloca i64, align 8
  %curr60 = load i64, ptr %curr, align 4
  %addtmp61 = add i64 %curr60, 16
  %calltmp62 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp61)
  %raw.value63 = extractvalue { i64, ptr, i8 } %calltmp62, 0
  store i64 %raw.value63, ptr %left, align 4
  %left64 = load i64, ptr %left, align 4
  %eqtmp65 = icmp eq i64 %left64, 0
  %ifcond66 = icmp ne i1 %eqtmp65, false
  br i1 %ifcond66, label %then67, label %ifcont109

then67:                                           ; preds = %then59
  %new_node68 = alloca i64, align 8
  %allocator69 = load i64, ptr %allocator, align 4
  %calltmp70 = call { i64, ptr, i8 } @allocator.MapAllocator_alloc(i64 %allocator69)
  %raw.value71 = extractvalue { i64, ptr, i8 } %calltmp70, 0
  store i64 %raw.value71, ptr %new_node68, align 4
  %new_node72 = load i64, ptr %new_node68, align 4
  %eqtmp73 = icmp eq i64 %new_node72, 0
  %ifcond74 = icmp ne i1 %eqtmp73, false
  br i1 %ifcond74, label %then75, label %ifcont76

then75:                                           ; preds = %then67
  ret { i8, ptr, i8 } zeroinitializer

ifcont76:                                         ; preds = %then67
  %new_node77 = load i64, ptr %new_node68, align 4
  %key78 = load i64, ptr %key.addr, align 4
  %calltmp79 = call { i8, ptr, i8 } @mem.store64(i64 %new_node77, i64 %key78)
  %raw.value80 = extractvalue { i8, ptr, i8 } %calltmp79, 0
  %new_node81 = load i64, ptr %new_node68, align 4
  %addtmp82 = add i64 %new_node81, 8
  %val83 = load i64, ptr %val.addr, align 4
  %calltmp84 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp82, i64 %val83)
  %raw.value85 = extractvalue { i8, ptr, i8 } %calltmp84, 0
  %new_node86 = load i64, ptr %new_node68, align 4
  %addtmp87 = add i64 %new_node86, 16
  %calltmp88 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp87, i64 0)
  %raw.value89 = extractvalue { i8, ptr, i8 } %calltmp88, 0
  %new_node90 = load i64, ptr %new_node68, align 4
  %addtmp91 = add i64 %new_node90, 24
  %calltmp92 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp91, i64 0)
  %raw.value93 = extractvalue { i8, ptr, i8 } %calltmp92, 0
  %curr94 = load i64, ptr %curr, align 4
  %addtmp95 = add i64 %curr94, 16
  %new_node96 = load i64, ptr %new_node68, align 4
  %calltmp97 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp95, i64 %new_node96)
  %raw.value98 = extractvalue { i8, ptr, i8 } %calltmp97, 0
  %s = alloca i64, align 8
  %map99 = load i64, ptr %map.addr, align 4
  %addtmp100 = add i64 %map99, 8
  %calltmp101 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp100)
  %raw.value102 = extractvalue { i64, ptr, i8 } %calltmp101, 0
  store i64 %raw.value102, ptr %s, align 4
  %map103 = load i64, ptr %map.addr, align 4
  %addtmp104 = add i64 %map103, 8
  %s105 = load i64, ptr %s, align 4
  %addtmp106 = add i64 %s105, 1
  %calltmp107 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp104, i64 %addtmp106)
  %raw.value108 = extractvalue { i8, ptr, i8 } %calltmp107, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont109:                                        ; preds = %then59
  %left110 = load i64, ptr %left, align 4
  store i64 %left110, ptr %curr, align 4
  br label %ifcont163

else:                                             ; preds = %ifcont55
  %right = alloca i64, align 8
  %curr111 = load i64, ptr %curr, align 4
  %addtmp112 = add i64 %curr111, 24
  %calltmp113 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp112)
  %raw.value114 = extractvalue { i64, ptr, i8 } %calltmp113, 0
  store i64 %raw.value114, ptr %right, align 4
  %right115 = load i64, ptr %right, align 4
  %eqtmp116 = icmp eq i64 %right115, 0
  %ifcond117 = icmp ne i1 %eqtmp116, false
  br i1 %ifcond117, label %then118, label %ifcont161

then118:                                          ; preds = %else
  %new_node119 = alloca i64, align 8
  %allocator120 = load i64, ptr %allocator, align 4
  %calltmp121 = call { i64, ptr, i8 } @allocator.MapAllocator_alloc(i64 %allocator120)
  %raw.value122 = extractvalue { i64, ptr, i8 } %calltmp121, 0
  store i64 %raw.value122, ptr %new_node119, align 4
  %new_node123 = load i64, ptr %new_node119, align 4
  %eqtmp124 = icmp eq i64 %new_node123, 0
  %ifcond125 = icmp ne i1 %eqtmp124, false
  br i1 %ifcond125, label %then126, label %ifcont127

then126:                                          ; preds = %then118
  ret { i8, ptr, i8 } zeroinitializer

ifcont127:                                        ; preds = %then118
  %new_node128 = load i64, ptr %new_node119, align 4
  %key129 = load i64, ptr %key.addr, align 4
  %calltmp130 = call { i8, ptr, i8 } @mem.store64(i64 %new_node128, i64 %key129)
  %raw.value131 = extractvalue { i8, ptr, i8 } %calltmp130, 0
  %new_node132 = load i64, ptr %new_node119, align 4
  %addtmp133 = add i64 %new_node132, 8
  %val134 = load i64, ptr %val.addr, align 4
  %calltmp135 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp133, i64 %val134)
  %raw.value136 = extractvalue { i8, ptr, i8 } %calltmp135, 0
  %new_node137 = load i64, ptr %new_node119, align 4
  %addtmp138 = add i64 %new_node137, 16
  %calltmp139 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp138, i64 0)
  %raw.value140 = extractvalue { i8, ptr, i8 } %calltmp139, 0
  %new_node141 = load i64, ptr %new_node119, align 4
  %addtmp142 = add i64 %new_node141, 24
  %calltmp143 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp142, i64 0)
  %raw.value144 = extractvalue { i8, ptr, i8 } %calltmp143, 0
  %curr145 = load i64, ptr %curr, align 4
  %addtmp146 = add i64 %curr145, 24
  %new_node147 = load i64, ptr %new_node119, align 4
  %calltmp148 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp146, i64 %new_node147)
  %raw.value149 = extractvalue { i8, ptr, i8 } %calltmp148, 0
  %s150 = alloca i64, align 8
  %map151 = load i64, ptr %map.addr, align 4
  %addtmp152 = add i64 %map151, 8
  %calltmp153 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp152)
  %raw.value154 = extractvalue { i64, ptr, i8 } %calltmp153, 0
  store i64 %raw.value154, ptr %s150, align 4
  %map155 = load i64, ptr %map.addr, align 4
  %addtmp156 = add i64 %map155, 8
  %s157 = load i64, ptr %s150, align 4
  %addtmp158 = add i64 %s157, 1
  %calltmp159 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp156, i64 %addtmp158)
  %raw.value160 = extractvalue { i8, ptr, i8 } %calltmp159, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont161:                                        ; preds = %else
  %right162 = load i64, ptr %right, align 4
  store i64 %right162, ptr %curr, align 4
  br label %ifcont163

ifcont163:                                        ; preds = %ifcont161, %ifcont109
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @treemap.treemap_get(i64 %map, i64 %key, i64 %out_val_ptr) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %out_val_ptr.addr = alloca i64, align 8
  store i64 %out_val_ptr, ptr %out_val_ptr.addr, align 4
  %curr = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont32, %entry
  %curr2 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr2, 0
  %whilecond3 = icmp ne i1 %netmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ckey = alloca i64, align 8
  %curr4 = load i64, ptr %curr, align 4
  %calltmp5 = call { i64, ptr, i8 } @mem.load64(i64 %curr4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %ckey, align 4
  %key7 = load i64, ptr %key.addr, align 4
  %ckey8 = load i64, ptr %ckey, align 4
  %eqtmp = icmp eq i64 %key7, %ckey8
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont19

then:                                             ; preds = %whilebody
  %out_val_ptr9 = load i64, ptr %out_val_ptr.addr, align 4
  %netmp10 = icmp ne i64 %out_val_ptr9, 0
  %ifcond11 = icmp ne i1 %netmp10, false
  br i1 %ifcond11, label %then12, label %ifcont

then12:                                           ; preds = %then
  %out_val_ptr13 = load i64, ptr %out_val_ptr.addr, align 4
  %curr14 = load i64, ptr %curr, align 4
  %addtmp = add i64 %curr14, 8
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  %calltmp17 = call { i8, ptr, i8 } @mem.store64(i64 %out_val_ptr13, i64 %raw.value16)
  %raw.value18 = extractvalue { i8, ptr, i8 } %calltmp17, 0
  br label %ifcont

ifcont:                                           ; preds = %then12, %then
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont19:                                         ; preds = %whilebody
  %key20 = load i64, ptr %key.addr, align 4
  %ckey21 = load i64, ptr %ckey, align 4
  %lttmp = icmp slt i64 %key20, %ckey21
  %ifcond22 = icmp ne i1 %lttmp, false
  br i1 %ifcond22, label %then23, label %else

then23:                                           ; preds = %ifcont19
  %curr24 = load i64, ptr %curr, align 4
  %addtmp25 = add i64 %curr24, 16
  %calltmp26 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp25)
  %raw.value27 = extractvalue { i64, ptr, i8 } %calltmp26, 0
  store i64 %raw.value27, ptr %curr, align 4
  br label %ifcont32

else:                                             ; preds = %ifcont19
  %curr28 = load i64, ptr %curr, align 4
  %addtmp29 = add i64 %curr28, 24
  %calltmp30 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp29)
  %raw.value31 = extractvalue { i64, ptr, i8 } %calltmp30, 0
  store i64 %raw.value31, ptr %curr, align 4
  br label %ifcont32

ifcont32:                                         ; preds = %else, %then23
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @treemap._treemap_min(i64 %node) {
entry:
  %node.addr = alloca i64, align 8
  store i64 %node, ptr %node.addr, align 4
  %curr = alloca i64, align 8
  %node1 = load i64, ptr %node.addr, align 4
  store i64 %node1, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont, %entry
  %curr2 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr2, 0
  %whilecond3 = icmp ne i1 %netmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %left = alloca i64, align 8
  %curr4 = load i64, ptr %curr, align 4
  %addtmp = add i64 %curr4, 16
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %left, align 4
  %left5 = load i64, ptr %left, align 4
  %eqtmp = icmp eq i64 %left5, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  %curr6 = load i64, ptr %curr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %curr6, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %whilebody
  %left7 = load i64, ptr %left, align 4
  store i64 %left7, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i64, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @treemap._treemap_remove_node(i64 %root, i64 %key, i64 %allocator, i64 %deleted_flag_ptr) {
entry:
  %root.addr = alloca i64, align 8
  store i64 %root, ptr %root.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %allocator.addr = alloca i64, align 8
  store i64 %allocator, ptr %allocator.addr, align 4
  %deleted_flag_ptr.addr = alloca i64, align 8
  store i64 %deleted_flag_ptr, ptr %deleted_flag_ptr.addr, align 4
  %root1 = load i64, ptr %root.addr, align 4
  %eqtmp = icmp eq i64 %root1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %ckey = alloca i64, align 8
  %root2 = load i64, ptr %root.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %root2)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %ckey, align 4
  %key3 = load i64, ptr %key.addr, align 4
  %ckey4 = load i64, ptr %ckey, align 4
  %lttmp = icmp slt i64 %key3, %ckey4
  %ifcond5 = icmp ne i1 %lttmp, false
  br i1 %ifcond5, label %then6, label %else

then6:                                            ; preds = %ifcont
  %left = alloca i64, align 8
  %root7 = load i64, ptr %root.addr, align 4
  %addtmp = add i64 %root7, 16
  %calltmp8 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value9 = extractvalue { i64, ptr, i8 } %calltmp8, 0
  store i64 %raw.value9, ptr %left, align 4
  %new_left = alloca i64, align 8
  %left10 = load i64, ptr %left, align 4
  %key11 = load i64, ptr %key.addr, align 4
  %allocator12 = load i64, ptr %allocator.addr, align 4
  %deleted_flag_ptr13 = load i64, ptr %deleted_flag_ptr.addr, align 4
  %calltmp14 = call { i64, ptr, i8 } @treemap._treemap_remove_node(i64 %left10, i64 %key11, i64 %allocator12, i64 %deleted_flag_ptr13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  store i64 %raw.value15, ptr %new_left, align 4
  %root16 = load i64, ptr %root.addr, align 4
  %addtmp17 = add i64 %root16, 16
  %new_left18 = load i64, ptr %new_left, align 4
  %calltmp19 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp17, i64 %new_left18)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  %root21 = load i64, ptr %root.addr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %root21, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

else:                                             ; preds = %ifcont
  %key22 = load i64, ptr %key.addr, align 4
  %ckey23 = load i64, ptr %ckey, align 4
  %gttmp = icmp sgt i64 %key22, %ckey23
  %ifcond24 = icmp ne i1 %gttmp, false
  br i1 %ifcond24, label %then25, label %else45

then25:                                           ; preds = %else
  %right = alloca i64, align 8
  %root26 = load i64, ptr %root.addr, align 4
  %addtmp27 = add i64 %root26, 24
  %calltmp28 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp27)
  %raw.value29 = extractvalue { i64, ptr, i8 } %calltmp28, 0
  store i64 %raw.value29, ptr %right, align 4
  %new_right = alloca i64, align 8
  %right30 = load i64, ptr %right, align 4
  %key31 = load i64, ptr %key.addr, align 4
  %allocator32 = load i64, ptr %allocator.addr, align 4
  %deleted_flag_ptr33 = load i64, ptr %deleted_flag_ptr.addr, align 4
  %calltmp34 = call { i64, ptr, i8 } @treemap._treemap_remove_node(i64 %right30, i64 %key31, i64 %allocator32, i64 %deleted_flag_ptr33)
  %raw.value35 = extractvalue { i64, ptr, i8 } %calltmp34, 0
  store i64 %raw.value35, ptr %new_right, align 4
  %root36 = load i64, ptr %root.addr, align 4
  %addtmp37 = add i64 %root36, 24
  %new_right38 = load i64, ptr %new_right, align 4
  %calltmp39 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp37, i64 %new_right38)
  %raw.value40 = extractvalue { i8, ptr, i8 } %calltmp39, 0
  %root41 = load i64, ptr %root.addr, align 4
  %result.val42 = insertvalue { i64, ptr, i8 } undef, i64 %root41, 0
  %result.err43 = insertvalue { i64, ptr, i8 } %result.val42, ptr null, 1
  %result.is_error44 = insertvalue { i64, ptr, i8 } %result.err43, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error44

else45:                                           ; preds = %else
  %deleted_flag_ptr46 = load i64, ptr %deleted_flag_ptr.addr, align 4
  %calltmp47 = call { i8, ptr, i8 } @mem.store8(i64 %deleted_flag_ptr46, i8 1)
  %raw.value48 = extractvalue { i8, ptr, i8 } %calltmp47, 0
  %left49 = alloca i64, align 8
  %root50 = load i64, ptr %root.addr, align 4
  %addtmp51 = add i64 %root50, 16
  %calltmp52 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp51)
  %raw.value53 = extractvalue { i64, ptr, i8 } %calltmp52, 0
  store i64 %raw.value53, ptr %left49, align 4
  %right54 = alloca i64, align 8
  %root55 = load i64, ptr %root.addr, align 4
  %addtmp56 = add i64 %root55, 24
  %calltmp57 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp56)
  %raw.value58 = extractvalue { i64, ptr, i8 } %calltmp57, 0
  store i64 %raw.value58, ptr %right54, align 4
  %left59 = load i64, ptr %left49, align 4
  %eqtmp60 = icmp eq i64 %left59, 0
  %ifcond61 = icmp ne i1 %eqtmp60, false
  br i1 %ifcond61, label %then62, label %else71

then62:                                           ; preds = %else45
  %allocator63 = load i64, ptr %allocator.addr, align 4
  %root64 = load i64, ptr %root.addr, align 4
  %calltmp65 = call { i8, ptr, i8 } @allocator.MapAllocator_free(i64 %allocator63, i64 %root64)
  %raw.value66 = extractvalue { i8, ptr, i8 } %calltmp65, 0
  %right67 = load i64, ptr %right54, align 4
  %result.val68 = insertvalue { i64, ptr, i8 } undef, i64 %right67, 0
  %result.err69 = insertvalue { i64, ptr, i8 } %result.val68, ptr null, 1
  %result.is_error70 = insertvalue { i64, ptr, i8 } %result.err69, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error70

else71:                                           ; preds = %else45
  %right72 = load i64, ptr %right54, align 4
  %eqtmp73 = icmp eq i64 %right72, 0
  %ifcond74 = icmp ne i1 %eqtmp73, false
  br i1 %ifcond74, label %then75, label %ifcont84

then75:                                           ; preds = %else71
  %allocator76 = load i64, ptr %allocator.addr, align 4
  %root77 = load i64, ptr %root.addr, align 4
  %calltmp78 = call { i8, ptr, i8 } @allocator.MapAllocator_free(i64 %allocator76, i64 %root77)
  %raw.value79 = extractvalue { i8, ptr, i8 } %calltmp78, 0
  %left80 = load i64, ptr %left49, align 4
  %result.val81 = insertvalue { i64, ptr, i8 } undef, i64 %left80, 0
  %result.err82 = insertvalue { i64, ptr, i8 } %result.val81, ptr null, 1
  %result.is_error83 = insertvalue { i64, ptr, i8 } %result.err82, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error83

ifcont84:                                         ; preds = %else71
  br label %ifcont85

ifcont85:                                         ; preds = %ifcont84
  %min_node = alloca i64, align 8
  %right86 = load i64, ptr %right54, align 4
  %calltmp87 = call { i64, ptr, i8 } @treemap._treemap_min(i64 %right86)
  %raw.value88 = extractvalue { i64, ptr, i8 } %calltmp87, 0
  store i64 %raw.value88, ptr %min_node, align 4
  %min_key = alloca i64, align 8
  %min_node89 = load i64, ptr %min_node, align 4
  %calltmp90 = call { i64, ptr, i8 } @mem.load64(i64 %min_node89)
  %raw.value91 = extractvalue { i64, ptr, i8 } %calltmp90, 0
  store i64 %raw.value91, ptr %min_key, align 4
  %min_val = alloca i64, align 8
  %min_node92 = load i64, ptr %min_node, align 4
  %addtmp93 = add i64 %min_node92, 8
  %calltmp94 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp93)
  %raw.value95 = extractvalue { i64, ptr, i8 } %calltmp94, 0
  store i64 %raw.value95, ptr %min_val, align 4
  %root96 = load i64, ptr %root.addr, align 4
  %min_key97 = load i64, ptr %min_key, align 4
  %calltmp98 = call { i8, ptr, i8 } @mem.store64(i64 %root96, i64 %min_key97)
  %raw.value99 = extractvalue { i8, ptr, i8 } %calltmp98, 0
  %root100 = load i64, ptr %root.addr, align 4
  %addtmp101 = add i64 %root100, 8
  %min_val102 = load i64, ptr %min_val, align 4
  %calltmp103 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp101, i64 %min_val102)
  %raw.value104 = extractvalue { i8, ptr, i8 } %calltmp103, 0
  %new_right105 = alloca i64, align 8
  %right106 = load i64, ptr %right54, align 4
  %min_key107 = load i64, ptr %min_key, align 4
  %allocator108 = load i64, ptr %allocator.addr, align 4
  %deleted_flag_ptr109 = load i64, ptr %deleted_flag_ptr.addr, align 4
  %calltmp110 = call { i64, ptr, i8 } @treemap._treemap_remove_node(i64 %right106, i64 %min_key107, i64 %allocator108, i64 %deleted_flag_ptr109)
  %raw.value111 = extractvalue { i64, ptr, i8 } %calltmp110, 0
  store i64 %raw.value111, ptr %new_right105, align 4
  %root112 = load i64, ptr %root.addr, align 4
  %addtmp113 = add i64 %root112, 24
  %new_right114 = load i64, ptr %new_right105, align 4
  %calltmp115 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp113, i64 %new_right114)
  %raw.value116 = extractvalue { i8, ptr, i8 } %calltmp115, 0
  %root117 = load i64, ptr %root.addr, align 4
  %result.val118 = insertvalue { i64, ptr, i8 } undef, i64 %root117, 0
  %result.err119 = insertvalue { i64, ptr, i8 } %result.val118, ptr null, 1
  %result.is_error120 = insertvalue { i64, ptr, i8 } %result.err119, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error120

ifcont121:                                        ; No predecessors!
  br label %ifcont122

ifcont122:                                        ; preds = %ifcont121
  ret { i64, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @treemap.treemap_remove(i64 %map, i64 %key) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %root = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %root, align 4
  %allocator = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %allocator, align 4
  %flag = alloca i8, align 1
  store i8 0, ptr %flag, align 1
  %flag_addr = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %flag to i64
  store i64 %cast.ptrtoint, ptr %flag_addr, align 4
  %flag_addr5 = load i64, ptr %flag_addr, align 4
  %calltmp6 = call { i8, ptr, i8 } @mem.store8(i64 %flag_addr5, i8 0)
  %raw.value7 = extractvalue { i8, ptr, i8 } %calltmp6, 0
  %new_root = alloca i64, align 8
  %root8 = load i64, ptr %root, align 4
  %key9 = load i64, ptr %key.addr, align 4
  %allocator10 = load i64, ptr %allocator, align 4
  %flag_addr11 = load i64, ptr %flag_addr, align 4
  %calltmp12 = call { i64, ptr, i8 } @treemap._treemap_remove_node(i64 %root8, i64 %key9, i64 %allocator10, i64 %flag_addr11)
  %raw.value13 = extractvalue { i64, ptr, i8 } %calltmp12, 0
  store i64 %raw.value13, ptr %new_root, align 4
  %map14 = load i64, ptr %map.addr, align 4
  %new_root15 = load i64, ptr %new_root, align 4
  %calltmp16 = call { i8, ptr, i8 } @mem.store64(i64 %map14, i64 %new_root15)
  %raw.value17 = extractvalue { i8, ptr, i8 } %calltmp16, 0
  %deleted = alloca i8, align 1
  %flag_addr18 = load i64, ptr %flag_addr, align 4
  %calltmp19 = call { i8, ptr, i8 } @mem.load8(i64 %flag_addr18)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  store i8 %raw.value20, ptr %deleted, align 1
  %deleted21 = load i8, ptr %deleted, align 1
  %eqtmp = icmp eq i8 %deleted21, 1
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %s = alloca i64, align 8
  %map22 = load i64, ptr %map.addr, align 4
  %addtmp23 = add i64 %map22, 8
  %calltmp24 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp23)
  %raw.value25 = extractvalue { i64, ptr, i8 } %calltmp24, 0
  store i64 %raw.value25, ptr %s, align 4
  %map26 = load i64, ptr %map.addr, align 4
  %addtmp27 = add i64 %map26, 8
  %s28 = load i64, ptr %s, align 4
  %subtmp = sub i64 %s28, 1
  %calltmp29 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp27, i64 %subtmp)
  %raw.value30 = extractvalue { i8, ptr, i8 } %calltmp29, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @treemap.treemap_destroy(i64 %map) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %map1 = load i64, ptr %map.addr, align 4
  %eqtmp = icmp eq i64 %map1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %allocator = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator3 = load i64, ptr %allocator, align 4
  %netmp = icmp ne i64 %allocator3, 0
  %ifcond4 = icmp ne i1 %netmp, false
  br i1 %ifcond4, label %then5, label %ifcont9

then5:                                            ; preds = %ifcont
  %allocator6 = load i64, ptr %allocator, align 4
  %calltmp7 = call { i8, ptr, i8 } @allocator.MapAllocator_destroy(i64 %allocator6)
  %raw.value8 = extractvalue { i8, ptr, i8 } %calltmp7, 0
  br label %ifcont9

ifcont9:                                          ; preds = %then5, %ifcont
  %map10 = load i64, ptr %map.addr, align 4
  %cast.inttoptr = inttoptr i64 %map10 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr i32 @__treemap_init() {
entry:
  ret i32 0
}

define i32 @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %err1 = load i32, ptr %err.addr, align 4
  call void @proc_exit(i32 %err1) #1
  unreachable
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %map = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @treemap.treemap_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %map, align 4
  %map1 = load i64, ptr %map, align 4
  %eqtmp = icmp eq i64 %map1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @proc_exit(i32 1) #1
  unreachable

ifcont:                                           ; preds = %entry
  %status = alloca i32, align 4
  store i32 0, ptr %status, align 4
  %out_val = alloca i64, align 8
  store i64 0, ptr %out_val, align 4
  %out_addr = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %out_val to i64
  store i64 %cast.ptrtoint, ptr %out_addr, align 4
  %map2 = load i64, ptr %map, align 4
  %calltmp3 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %map2, i64 50, i64 500)
  %raw.value4 = extractvalue { i8, ptr, i8 } %calltmp3, 0
  %map5 = load i64, ptr %map, align 4
  %calltmp6 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %map5, i64 30, i64 300)
  %raw.value7 = extractvalue { i8, ptr, i8 } %calltmp6, 0
  %map8 = load i64, ptr %map, align 4
  %calltmp9 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %map8, i64 70, i64 700)
  %raw.value10 = extractvalue { i8, ptr, i8 } %calltmp9, 0
  %map11 = load i64, ptr %map, align 4
  %calltmp12 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %map11, i64 20, i64 200)
  %raw.value13 = extractvalue { i8, ptr, i8 } %calltmp12, 0
  %map14 = load i64, ptr %map, align 4
  %calltmp15 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %map14, i64 40, i64 400)
  %raw.value16 = extractvalue { i8, ptr, i8 } %calltmp15, 0
  %f1 = alloca i8, align 1
  %map17 = load i64, ptr %map, align 4
  %out_addr18 = load i64, ptr %out_addr, align 4
  %calltmp19 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map17, i64 30, i64 %out_addr18)
  %raw.value20 = extractvalue { i8, ptr, i8 } %calltmp19, 0
  store i8 %raw.value20, ptr %f1, align 1
  %f121 = load i8, ptr %f1, align 1
  %netmp = icmp ne i8 %f121, 1
  %ifcond22 = icmp ne i1 %netmp, false
  br i1 %ifcond22, label %then23, label %ifcont24

then23:                                           ; preds = %ifcont
  store i32 2, ptr %status, align 4
  br label %ifcont24

ifcont24:                                         ; preds = %then23, %ifcont
  %out_addr25 = load i64, ptr %out_addr, align 4
  %calltmp26 = call { i64, ptr, i8 } @mem.load64(i64 %out_addr25)
  %raw.value27 = extractvalue { i64, ptr, i8 } %calltmp26, 0
  %netmp28 = icmp ne i64 %raw.value27, 300
  %ifcond29 = icmp ne i1 %netmp28, false
  br i1 %ifcond29, label %then30, label %ifcont31

then30:                                           ; preds = %ifcont24
  store i32 3, ptr %status, align 4
  br label %ifcont31

ifcont31:                                         ; preds = %then30, %ifcont24
  %f2 = alloca i8, align 1
  %map32 = load i64, ptr %map, align 4
  %out_addr33 = load i64, ptr %out_addr, align 4
  %calltmp34 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map32, i64 40, i64 %out_addr33)
  %raw.value35 = extractvalue { i8, ptr, i8 } %calltmp34, 0
  store i8 %raw.value35, ptr %f2, align 1
  %f236 = load i8, ptr %f2, align 1
  %netmp37 = icmp ne i8 %f236, 1
  %ifcond38 = icmp ne i1 %netmp37, false
  br i1 %ifcond38, label %then39, label %ifcont40

then39:                                           ; preds = %ifcont31
  store i32 4, ptr %status, align 4
  br label %ifcont40

ifcont40:                                         ; preds = %then39, %ifcont31
  %out_addr41 = load i64, ptr %out_addr, align 4
  %calltmp42 = call { i64, ptr, i8 } @mem.load64(i64 %out_addr41)
  %raw.value43 = extractvalue { i64, ptr, i8 } %calltmp42, 0
  %netmp44 = icmp ne i64 %raw.value43, 400
  %ifcond45 = icmp ne i1 %netmp44, false
  br i1 %ifcond45, label %then46, label %ifcont47

then46:                                           ; preds = %ifcont40
  store i32 5, ptr %status, align 4
  br label %ifcont47

ifcont47:                                         ; preds = %then46, %ifcont40
  %f3 = alloca i8, align 1
  %map48 = load i64, ptr %map, align 4
  %out_addr49 = load i64, ptr %out_addr, align 4
  %calltmp50 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map48, i64 99, i64 %out_addr49)
  %raw.value51 = extractvalue { i8, ptr, i8 } %calltmp50, 0
  store i8 %raw.value51, ptr %f3, align 1
  %f352 = load i8, ptr %f3, align 1
  %eqtmp53 = icmp eq i8 %f352, 1
  %ifcond54 = icmp ne i1 %eqtmp53, false
  br i1 %ifcond54, label %then55, label %ifcont56

then55:                                           ; preds = %ifcont47
  store i32 6, ptr %status, align 4
  br label %ifcont56

ifcont56:                                         ; preds = %then55, %ifcont47
  %map57 = load i64, ptr %map, align 4
  %calltmp58 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %map57, i64 30, i64 301)
  %raw.value59 = extractvalue { i8, ptr, i8 } %calltmp58, 0
  %f4 = alloca i8, align 1
  %map60 = load i64, ptr %map, align 4
  %out_addr61 = load i64, ptr %out_addr, align 4
  %calltmp62 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map60, i64 30, i64 %out_addr61)
  %raw.value63 = extractvalue { i8, ptr, i8 } %calltmp62, 0
  store i8 %raw.value63, ptr %f4, align 1
  %f464 = load i8, ptr %f4, align 1
  %netmp65 = icmp ne i8 %f464, 1
  %ifcond66 = icmp ne i1 %netmp65, false
  br i1 %ifcond66, label %then67, label %ifcont68

then67:                                           ; preds = %ifcont56
  store i32 7, ptr %status, align 4
  br label %ifcont68

ifcont68:                                         ; preds = %then67, %ifcont56
  %out_addr69 = load i64, ptr %out_addr, align 4
  %calltmp70 = call { i64, ptr, i8 } @mem.load64(i64 %out_addr69)
  %raw.value71 = extractvalue { i64, ptr, i8 } %calltmp70, 0
  %netmp72 = icmp ne i64 %raw.value71, 301
  %ifcond73 = icmp ne i1 %netmp72, false
  br i1 %ifcond73, label %then74, label %ifcont75

then74:                                           ; preds = %ifcont68
  store i32 8, ptr %status, align 4
  br label %ifcont75

ifcont75:                                         ; preds = %then74, %ifcont68
  %rem1 = alloca i8, align 1
  %map76 = load i64, ptr %map, align 4
  %calltmp77 = call { i8, ptr, i8 } @treemap.treemap_remove(i64 %map76, i64 30)
  %raw.value78 = extractvalue { i8, ptr, i8 } %calltmp77, 0
  store i8 %raw.value78, ptr %rem1, align 1
  %rem179 = load i8, ptr %rem1, align 1
  %netmp80 = icmp ne i8 %rem179, 1
  %ifcond81 = icmp ne i1 %netmp80, false
  br i1 %ifcond81, label %then82, label %ifcont83

then82:                                           ; preds = %ifcont75
  store i32 9, ptr %status, align 4
  br label %ifcont83

ifcont83:                                         ; preds = %then82, %ifcont75
  %f5 = alloca i8, align 1
  %map84 = load i64, ptr %map, align 4
  %out_addr85 = load i64, ptr %out_addr, align 4
  %calltmp86 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map84, i64 30, i64 %out_addr85)
  %raw.value87 = extractvalue { i8, ptr, i8 } %calltmp86, 0
  store i8 %raw.value87, ptr %f5, align 1
  %f588 = load i8, ptr %f5, align 1
  %eqtmp89 = icmp eq i8 %f588, 1
  %ifcond90 = icmp ne i1 %eqtmp89, false
  br i1 %ifcond90, label %then91, label %ifcont92

then91:                                           ; preds = %ifcont83
  store i32 10, ptr %status, align 4
  br label %ifcont92

ifcont92:                                         ; preds = %then91, %ifcont83
  %f6 = alloca i8, align 1
  %map93 = load i64, ptr %map, align 4
  %out_addr94 = load i64, ptr %out_addr, align 4
  %calltmp95 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map93, i64 20, i64 %out_addr94)
  %raw.value96 = extractvalue { i8, ptr, i8 } %calltmp95, 0
  store i8 %raw.value96, ptr %f6, align 1
  %f697 = load i8, ptr %f6, align 1
  %netmp98 = icmp ne i8 %f697, 1
  %ifcond99 = icmp ne i1 %netmp98, false
  br i1 %ifcond99, label %then100, label %ifcont101

then100:                                          ; preds = %ifcont92
  store i32 11, ptr %status, align 4
  br label %ifcont101

ifcont101:                                        ; preds = %then100, %ifcont92
  %f7 = alloca i8, align 1
  %map102 = load i64, ptr %map, align 4
  %out_addr103 = load i64, ptr %out_addr, align 4
  %calltmp104 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %map102, i64 40, i64 %out_addr103)
  %raw.value105 = extractvalue { i8, ptr, i8 } %calltmp104, 0
  store i8 %raw.value105, ptr %f7, align 1
  %f7106 = load i8, ptr %f7, align 1
  %netmp107 = icmp ne i8 %f7106, 1
  %ifcond108 = icmp ne i1 %netmp107, false
  br i1 %ifcond108, label %then109, label %ifcont110

then109:                                          ; preds = %ifcont101
  store i32 12, ptr %status, align 4
  br label %ifcont110

ifcont110:                                        ; preds = %then109, %ifcont101
  %map111 = load i64, ptr %map, align 4
  %addtmp = add i64 %map111, 8
  %calltmp112 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value113 = extractvalue { i64, ptr, i8 } %calltmp112, 0
  %netmp114 = icmp ne i64 %raw.value113, 4
  %ifcond115 = icmp ne i1 %netmp114, false
  br i1 %ifcond115, label %then116, label %ifcont117

then116:                                          ; preds = %ifcont110
  store i32 13, ptr %status, align 4
  br label %ifcont117

ifcont117:                                        ; preds = %then116, %ifcont110
  %map118 = load i64, ptr %map, align 4
  %calltmp119 = call { i8, ptr, i8 } @treemap.treemap_destroy(i64 %map118)
  %raw.value120 = extractvalue { i8, ptr, i8 } %calltmp119, 0
  %status121 = load i32, ptr %status, align 4
  call void @proc_exit(i32 %status121) #1
  unreachable
}

; Function Attrs: noreturn
declare void @proc_exit(i32) #1

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__test_treemap_init() {
entry:
  ret i32 0
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { noreturn }
