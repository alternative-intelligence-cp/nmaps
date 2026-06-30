; ModuleID = 'tests/benchmark_nmaps.npk'
source_filename = "tests/benchmark_nmaps.npk"

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

define linkonce_odr { i64, ptr, i8 } @intmap.STATE_EMPTY() {
entry:
  ret { i64, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @intmap.STATE_OCCUPIED() {
entry:
  ret { i64, ptr, i8 } { i64 1, ptr null, i8 0 }
}

define linkonce_odr { i64, ptr, i8 } @intmap.STATE_DELETED() {
entry:
  ret { i64, ptr, i8 } { i64 2, ptr null, i8 0 }
}

define linkonce_odr { i64, ptr, i8 } @intmap.create(i64 %initial_capacity) {
entry:
  %initial_capacity.addr = alloca i64, align 8
  store i64 %initial_capacity, ptr %initial_capacity.addr, align 4
  %initial_capacity1 = load i64, ptr %initial_capacity.addr, align 4
  %lttmp = icmp slt i64 %initial_capacity1, 8
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  store i64 8, ptr %initial_capacity.addr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %header_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 24)
  store ptr %wild_ptr, ptr %header_ptr, align 8
  %header_ptr2 = load ptr, ptr %header_ptr, align 8
  %header_ptr3 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %header_ptr3 to i64
  %eqtmp = icmp eq i64 %cast.ptrtoint, 0
  %ifcond4 = icmp ne i1 %eqtmp, false
  br i1 %ifcond4, label %then5, label %ifcont6

then5:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } zeroinitializer

ifcont6:                                          ; preds = %ifcont
  %buckets_size = alloca i64, align 8
  %initial_capacity7 = load i64, ptr %initial_capacity.addr, align 4
  %multmp = mul i64 %initial_capacity7, 24
  store i64 %multmp, ptr %buckets_size, align 4
  %buckets_ptr = call ptr @npk_alloc(i64 8)
  %buckets_size8 = load i64, ptr %buckets_size, align 4
  %wild_ptr9 = call ptr @npk_alloc(i64 %buckets_size8)
  store ptr %wild_ptr9, ptr %buckets_ptr, align 8
  %buckets_ptr10 = load ptr, ptr %buckets_ptr, align 8
  %buckets_ptr11 = load ptr, ptr %buckets_ptr, align 8
  %cast.ptrtoint12 = ptrtoint ptr %buckets_ptr11 to i64
  %eqtmp13 = icmp eq i64 %cast.ptrtoint12, 0
  %ifcond14 = icmp ne i1 %eqtmp13, false
  br i1 %ifcond14, label %then15, label %ifcont17

then15:                                           ; preds = %ifcont6
  %header_ptr16 = load ptr, ptr %header_ptr, align 8
  call void @npk_free(ptr %header_ptr16)
  ret { i64, ptr, i8 } zeroinitializer

ifcont17:                                         ; preds = %ifcont6
  %b_addr = alloca i64, align 8
  %buckets_ptr18 = load ptr, ptr %buckets_ptr, align 8
  %buckets_ptr19 = load ptr, ptr %buckets_ptr, align 8
  %cast.ptrtoint20 = ptrtoint ptr %buckets_ptr19 to i64
  %andtmp = and i64 %cast.ptrtoint20, 281474976710655
  store i64 %andtmp, ptr %b_addr, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont17
  %i21 = load i64, ptr %i, align 4
  %buckets_size22 = load i64, ptr %buckets_size, align 4
  %lttmp23 = icmp slt i64 %i21, %buckets_size22
  %whilecond24 = icmp ne i1 %lttmp23, false
  br i1 %whilecond24, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %b_addr25 = load i64, ptr %b_addr, align 4
  %i26 = load i64, ptr %i, align 4
  %addtmp = add i64 %b_addr25, %i26
  %calltmp = call { i8, ptr, i8 } @mem.store8(i64 %addtmp, i8 0)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %i27 = load i64, ptr %i, align 4
  %addtmp28 = add i64 %i27, 1
  store i64 %addtmp28, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %h_addr = alloca i64, align 8
  %header_ptr29 = load ptr, ptr %header_ptr, align 8
  %header_ptr30 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint31 = ptrtoint ptr %header_ptr30 to i64
  %andtmp32 = and i64 %cast.ptrtoint31, 281474976710655
  store i64 %andtmp32, ptr %h_addr, align 4
  %h_addr33 = load i64, ptr %h_addr, align 4
  %initial_capacity34 = load i64, ptr %initial_capacity.addr, align 4
  %calltmp35 = call { i8, ptr, i8 } @mem.store64(i64 %h_addr33, i64 %initial_capacity34)
  %raw.value36 = extractvalue { i8, ptr, i8 } %calltmp35, 0
  %h_addr37 = load i64, ptr %h_addr, align 4
  %addtmp38 = add i64 %h_addr37, 8
  %calltmp39 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp38, i64 0)
  %raw.value40 = extractvalue { i8, ptr, i8 } %calltmp39, 0
  %h_addr41 = load i64, ptr %h_addr, align 4
  %addtmp42 = add i64 %h_addr41, 16
  %b_addr43 = load i64, ptr %b_addr, align 4
  %calltmp44 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp42, i64 %b_addr43)
  %raw.value45 = extractvalue { i8, ptr, i8 } %calltmp44, 0
  %h_addr46 = load i64, ptr %h_addr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %h_addr46, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @intmap.hash_int64(i64 %key) {
entry:
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %k = alloca i64, align 8
  %key1 = load i64, ptr %key.addr, align 4
  store i64 %key1, ptr %k, align 4
  %k2 = load i64, ptr %k, align 4
  %k3 = load i64, ptr %k, align 4
  %ashrtmp = ashr i64 %k3, 30
  %andtmp = and i64 %ashrtmp, 17179869183
  %xortmp = xor i64 %k2, %andtmp
  store i64 %xortmp, ptr %k, align 4
  %k4 = load i64, ptr %k, align 4
  %multmp = mul i64 %k4, 0
  store i64 %multmp, ptr %k, align 4
  %k5 = load i64, ptr %k, align 4
  %k6 = load i64, ptr %k, align 4
  %ashrtmp7 = ashr i64 %k6, 27
  %andtmp8 = and i64 %ashrtmp7, 137438953471
  %xortmp9 = xor i64 %k5, %andtmp8
  store i64 %xortmp9, ptr %k, align 4
  %k10 = load i64, ptr %k, align 4
  %multmp11 = mul i64 %k10, 0
  store i64 %multmp11, ptr %k, align 4
  %k12 = load i64, ptr %k, align 4
  %k13 = load i64, ptr %k, align 4
  %ashrtmp14 = ashr i64 %k13, 31
  %andtmp15 = and i64 %ashrtmp14, 8589934591
  %xortmp16 = xor i64 %k12, %andtmp15
  store i64 %xortmp16, ptr %k, align 4
  %k17 = load i64, ptr %k, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %k17, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @intmap._rehash(i64 %map) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %old_capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %old_capacity, align 4
  %old_buckets = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %old_buckets, align 4
  %new_capacity = alloca i64, align 8
  %old_capacity5 = load i64, ptr %old_capacity, align 4
  %multmp = mul i64 %old_capacity5, 2
  store i64 %multmp, ptr %new_capacity, align 4
  %new_buckets_size = alloca i64, align 8
  %new_capacity6 = load i64, ptr %new_capacity, align 4
  %multmp7 = mul i64 %new_capacity6, 24
  store i64 %multmp7, ptr %new_buckets_size, align 4
  %new_buckets_ptr = call ptr @npk_alloc(i64 8)
  %new_buckets_size8 = load i64, ptr %new_buckets_size, align 4
  %wild_ptr = call ptr @npk_alloc(i64 %new_buckets_size8)
  store ptr %wild_ptr, ptr %new_buckets_ptr, align 8
  %new_buckets_ptr9 = load ptr, ptr %new_buckets_ptr, align 8
  %new_buckets_ptr10 = load ptr, ptr %new_buckets_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %new_buckets_ptr10 to i64
  %eqtmp = icmp eq i64 %cast.ptrtoint, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %new_b_addr = alloca i64, align 8
  %new_buckets_ptr11 = load ptr, ptr %new_buckets_ptr, align 8
  %new_buckets_ptr12 = load ptr, ptr %new_buckets_ptr, align 8
  %cast.ptrtoint13 = ptrtoint ptr %new_buckets_ptr12 to i64
  %andtmp = and i64 %cast.ptrtoint13, 281474976710655
  store i64 %andtmp, ptr %new_b_addr, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i14 = load i64, ptr %i, align 4
  %new_buckets_size15 = load i64, ptr %new_buckets_size, align 4
  %lttmp = icmp slt i64 %i14, %new_buckets_size15
  %whilecond16 = icmp ne i1 %lttmp, false
  br i1 %whilecond16, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %new_b_addr17 = load i64, ptr %new_b_addr, align 4
  %i18 = load i64, ptr %i, align 4
  %addtmp19 = add i64 %new_b_addr17, %i18
  %calltmp20 = call { i8, ptr, i8 } @mem.store8(i64 %addtmp19, i8 0)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %i22 = load i64, ptr %i, align 4
  %addtmp23 = add i64 %i22, 1
  store i64 %addtmp23, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %map24 = load i64, ptr %map.addr, align 4
  %new_capacity25 = load i64, ptr %new_capacity, align 4
  %calltmp26 = call { i8, ptr, i8 } @mem.store64(i64 %map24, i64 %new_capacity25)
  %raw.value27 = extractvalue { i8, ptr, i8 } %calltmp26, 0
  %map28 = load i64, ptr %map.addr, align 4
  %addtmp29 = add i64 %map28, 16
  %new_b_addr30 = load i64, ptr %new_b_addr, align 4
  %calltmp31 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp29, i64 %new_b_addr30)
  %raw.value32 = extractvalue { i8, ptr, i8 } %calltmp31, 0
  %map33 = load i64, ptr %map.addr, align 4
  %addtmp34 = add i64 %map33, 8
  %calltmp35 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp34, i64 0)
  %raw.value36 = extractvalue { i8, ptr, i8 } %calltmp35, 0
  %j = alloca i64, align 8
  store i64 0, ptr %j, align 4
  br label %whilecond37

whilecond37:                                      ; preds = %ifcont67, %afterwhile
  %j38 = load i64, ptr %j, align 4
  %old_capacity39 = load i64, ptr %old_capacity, align 4
  %lttmp40 = icmp slt i64 %j38, %old_capacity39
  %whilecond41 = icmp ne i1 %lttmp40, false
  br i1 %whilecond41, label %whilebody42, label %afterwhile70

whilebody42:                                      ; preds = %whilecond37
  %old_entry_addr = alloca i64, align 8
  %old_buckets43 = load i64, ptr %old_buckets, align 4
  %j44 = load i64, ptr %j, align 4
  %multmp45 = mul i64 %j44, 24
  %addtmp46 = add i64 %old_buckets43, %multmp45
  store i64 %addtmp46, ptr %old_entry_addr, align 4
  %state = alloca i64, align 8
  %old_entry_addr47 = load i64, ptr %old_entry_addr, align 4
  %calltmp48 = call { i64, ptr, i8 } @mem.load64(i64 %old_entry_addr47)
  %raw.value49 = extractvalue { i64, ptr, i8 } %calltmp48, 0
  store i64 %raw.value49, ptr %state, align 4
  %state50 = load i64, ptr %state, align 4
  %eqtmp51 = icmp eq i64 %state50, 1
  %ifcond52 = icmp ne i1 %eqtmp51, false
  br i1 %ifcond52, label %then53, label %ifcont67

then53:                                           ; preds = %whilebody42
  %key = alloca i64, align 8
  %old_entry_addr54 = load i64, ptr %old_entry_addr, align 4
  %addtmp55 = add i64 %old_entry_addr54, 8
  %calltmp56 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp55)
  %raw.value57 = extractvalue { i64, ptr, i8 } %calltmp56, 0
  store i64 %raw.value57, ptr %key, align 4
  %val = alloca i64, align 8
  %old_entry_addr58 = load i64, ptr %old_entry_addr, align 4
  %addtmp59 = add i64 %old_entry_addr58, 16
  %calltmp60 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp59)
  %raw.value61 = extractvalue { i64, ptr, i8 } %calltmp60, 0
  store i64 %raw.value61, ptr %val, align 4
  %map62 = load i64, ptr %map.addr, align 4
  %key63 = load i64, ptr %key, align 4
  %val64 = load i64, ptr %val, align 4
  %calltmp65 = call { i8, ptr, i8 } @intmap.put(i64 %map62, i64 %key63, i64 %val64)
  %raw.value66 = extractvalue { i8, ptr, i8 } %calltmp65, 0
  br label %ifcont67

ifcont67:                                         ; preds = %then53, %whilebody42
  %j68 = load i64, ptr %j, align 4
  %addtmp69 = add i64 %j68, 1
  store i64 %addtmp69, ptr %j, align 4
  call void @npk_gc_safepoint()
  br label %whilecond37

afterwhile70:                                     ; preds = %whilecond37
  %old_buckets71 = load i64, ptr %old_buckets, align 4
  %cast.inttoptr = inttoptr i64 %old_buckets71 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr { i8, ptr, i8 } @intmap.put(i64 %map, i64 %key, i64 %val) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %capacity, align 4
  %size = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 8
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %size, align 4
  %threshold = alloca i64, align 8
  %capacity5 = load i64, ptr %capacity, align 4
  %multmp = mul i64 %capacity5, 7
  %divtmp = sdiv i64 %multmp, 10
  %safe.divtmp = select i1 false, i64 9223372036854775807, i64 %divtmp
  store i64 %safe.divtmp, ptr %threshold, align 4
  %size6 = load i64, ptr %size, align 4
  %threshold7 = load i64, ptr %threshold, align 4
  %getmp = icmp sge i64 %size6, %threshold7
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %map8 = load i64, ptr %map.addr, align 4
  %calltmp9 = call { i8, ptr, i8 } @intmap._rehash(i64 %map8)
  %raw.value10 = extractvalue { i8, ptr, i8 } %calltmp9, 0
  %map11 = load i64, ptr %map.addr, align 4
  %calltmp12 = call { i64, ptr, i8 } @mem.load64(i64 %map11)
  %raw.value13 = extractvalue { i64, ptr, i8 } %calltmp12, 0
  store i64 %raw.value13, ptr %capacity, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %buckets = alloca i64, align 8
  %map14 = load i64, ptr %map.addr, align 4
  %addtmp15 = add i64 %map14, 16
  %calltmp16 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp15)
  %raw.value17 = extractvalue { i64, ptr, i8 } %calltmp16, 0
  store i64 %raw.value17, ptr %buckets, align 4
  %hash = alloca i64, align 8
  %key18 = load i64, ptr %key.addr, align 4
  %calltmp19 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key18)
  %raw.value20 = extractvalue { i64, ptr, i8 } %calltmp19, 0
  store i64 %raw.value20, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash21 = load i64, ptr %hash, align 4
  %capacity22 = load i64, ptr %capacity, align 4
  %mod.iszero = icmp eq i64 %capacity22, 0
  %modtmp = srem i64 %hash21, %capacity22
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx23 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx23, 0
  %ifcond24 = icmp ne i1 %lttmp, false
  br i1 %ifcond24, label %then25, label %ifcont29

then25:                                           ; preds = %ifcont
  %idx26 = load i64, ptr %idx, align 4
  %capacity27 = load i64, ptr %capacity, align 4
  %addtmp28 = add i64 %idx26, %capacity27
  store i64 %addtmp28, ptr %idx, align 4
  br label %ifcont29

ifcont29:                                         ; preds = %then25, %ifcont
  %first_deleted_idx = alloca i64, align 8
  store i64 -1, ptr %first_deleted_idx, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont111, %ifcont29
  %i30 = load i64, ptr %i, align 4
  %capacity31 = load i64, ptr %capacity, align 4
  %lttmp32 = icmp slt i64 %i30, %capacity31
  %whilecond33 = icmp ne i1 %lttmp32, false
  br i1 %whilecond33, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %entry_addr = alloca i64, align 8
  %buckets34 = load i64, ptr %buckets, align 4
  %idx35 = load i64, ptr %idx, align 4
  %multmp36 = mul i64 %idx35, 24
  %addtmp37 = add i64 %buckets34, %multmp36
  store i64 %addtmp37, ptr %entry_addr, align 4
  %state = alloca i64, align 8
  %entry_addr38 = load i64, ptr %entry_addr, align 4
  %calltmp39 = call { i64, ptr, i8 } @mem.load64(i64 %entry_addr38)
  %raw.value40 = extractvalue { i64, ptr, i8 } %calltmp39, 0
  store i64 %raw.value40, ptr %state, align 4
  %state41 = load i64, ptr %state, align 4
  %eqtmp = icmp eq i64 %state41, 0
  %ifcond42 = icmp ne i1 %eqtmp, false
  br i1 %ifcond42, label %then43, label %else

then43:                                           ; preds = %whilebody
  %first_deleted_idx44 = load i64, ptr %first_deleted_idx, align 4
  %netmp = icmp ne i64 %first_deleted_idx44, -1
  %ifcond45 = icmp ne i1 %netmp, false
  br i1 %ifcond45, label %then46, label %ifcont51

then46:                                           ; preds = %then43
  %buckets47 = load i64, ptr %buckets, align 4
  %first_deleted_idx48 = load i64, ptr %first_deleted_idx, align 4
  %multmp49 = mul i64 %first_deleted_idx48, 24
  %addtmp50 = add i64 %buckets47, %multmp49
  store i64 %addtmp50, ptr %entry_addr, align 4
  br label %ifcont51

ifcont51:                                         ; preds = %then46, %then43
  %entry_addr52 = load i64, ptr %entry_addr, align 4
  %calltmp53 = call { i8, ptr, i8 } @mem.store64(i64 %entry_addr52, i64 1)
  %raw.value54 = extractvalue { i8, ptr, i8 } %calltmp53, 0
  %entry_addr55 = load i64, ptr %entry_addr, align 4
  %addtmp56 = add i64 %entry_addr55, 8
  %key57 = load i64, ptr %key.addr, align 4
  %calltmp58 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp56, i64 %key57)
  %raw.value59 = extractvalue { i8, ptr, i8 } %calltmp58, 0
  %entry_addr60 = load i64, ptr %entry_addr, align 4
  %addtmp61 = add i64 %entry_addr60, 16
  %val62 = load i64, ptr %val.addr, align 4
  %calltmp63 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp61, i64 %val62)
  %raw.value64 = extractvalue { i8, ptr, i8 } %calltmp63, 0
  %map65 = load i64, ptr %map.addr, align 4
  %addtmp66 = add i64 %map65, 8
  %size67 = load i64, ptr %size, align 4
  %addtmp68 = add i64 %size67, 1
  %calltmp69 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp66, i64 %addtmp68)
  %raw.value70 = extractvalue { i8, ptr, i8 } %calltmp69, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

else:                                             ; preds = %whilebody
  %state71 = load i64, ptr %state, align 4
  %eqtmp72 = icmp eq i64 %state71, 1
  %ifcond73 = icmp ne i1 %eqtmp72, false
  br i1 %ifcond73, label %then74, label %else90

then74:                                           ; preds = %else
  %ekey = alloca i64, align 8
  %entry_addr75 = load i64, ptr %entry_addr, align 4
  %addtmp76 = add i64 %entry_addr75, 8
  %calltmp77 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp76)
  %raw.value78 = extractvalue { i64, ptr, i8 } %calltmp77, 0
  store i64 %raw.value78, ptr %ekey, align 4
  %ekey79 = load i64, ptr %ekey, align 4
  %key80 = load i64, ptr %key.addr, align 4
  %eqtmp81 = icmp eq i64 %ekey79, %key80
  %ifcond82 = icmp ne i1 %eqtmp81, false
  br i1 %ifcond82, label %then83, label %ifcont89

then83:                                           ; preds = %then74
  %entry_addr84 = load i64, ptr %entry_addr, align 4
  %addtmp85 = add i64 %entry_addr84, 16
  %val86 = load i64, ptr %val.addr, align 4
  %calltmp87 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp85, i64 %val86)
  %raw.value88 = extractvalue { i8, ptr, i8 } %calltmp87, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont89:                                         ; preds = %then74
  br label %ifcont102

else90:                                           ; preds = %else
  %state91 = load i64, ptr %state, align 4
  %eqtmp92 = icmp eq i64 %state91, 2
  %ifcond93 = icmp ne i1 %eqtmp92, false
  br i1 %ifcond93, label %then94, label %ifcont101

then94:                                           ; preds = %else90
  %first_deleted_idx95 = load i64, ptr %first_deleted_idx, align 4
  %eqtmp96 = icmp eq i64 %first_deleted_idx95, -1
  %ifcond97 = icmp ne i1 %eqtmp96, false
  br i1 %ifcond97, label %then98, label %ifcont100

then98:                                           ; preds = %then94
  %idx99 = load i64, ptr %idx, align 4
  store i64 %idx99, ptr %first_deleted_idx, align 4
  br label %ifcont100

ifcont100:                                        ; preds = %then98, %then94
  br label %ifcont101

ifcont101:                                        ; preds = %ifcont100, %else90
  br label %ifcont102

ifcont102:                                        ; preds = %ifcont101, %ifcont89
  br label %ifcont103

ifcont103:                                        ; preds = %ifcont102
  %idx104 = load i64, ptr %idx, align 4
  %addtmp105 = add i64 %idx104, 1
  store i64 %addtmp105, ptr %idx, align 4
  %idx106 = load i64, ptr %idx, align 4
  %capacity107 = load i64, ptr %capacity, align 4
  %getmp108 = icmp sge i64 %idx106, %capacity107
  %ifcond109 = icmp ne i1 %getmp108, false
  br i1 %ifcond109, label %then110, label %ifcont111

then110:                                          ; preds = %ifcont103
  store i64 0, ptr %idx, align 4
  br label %ifcont111

ifcont111:                                        ; preds = %then110, %ifcont103
  %i112 = load i64, ptr %i, align 4
  %addtmp113 = add i64 %i112, 1
  store i64 %addtmp113, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @intmap.get(i64 %map, i64 %key, i64 %out_val_ptr) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %out_val_ptr.addr = alloca i64, align 8
  store i64 %out_val_ptr, ptr %out_val_ptr.addr, align 4
  %capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %capacity, align 4
  %buckets = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %buckets, align 4
  %hash = alloca i64, align 8
  %key5 = load i64, ptr %key.addr, align 4
  %calltmp6 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key5)
  %raw.value7 = extractvalue { i64, ptr, i8 } %calltmp6, 0
  store i64 %raw.value7, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash8 = load i64, ptr %hash, align 4
  %capacity9 = load i64, ptr %capacity, align 4
  %mod.iszero = icmp eq i64 %capacity9, 0
  %modtmp = srem i64 %hash8, %capacity9
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx10 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx10, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %idx11 = load i64, ptr %idx, align 4
  %capacity12 = load i64, ptr %capacity, align 4
  %addtmp13 = add i64 %idx11, %capacity12
  store i64 %addtmp13, ptr %idx, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont61, %ifcont
  %i14 = load i64, ptr %i, align 4
  %capacity15 = load i64, ptr %capacity, align 4
  %lttmp16 = icmp slt i64 %i14, %capacity15
  %whilecond17 = icmp ne i1 %lttmp16, false
  br i1 %whilecond17, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %entry_addr = alloca i64, align 8
  %buckets18 = load i64, ptr %buckets, align 4
  %idx19 = load i64, ptr %idx, align 4
  %multmp = mul i64 %idx19, 24
  %addtmp20 = add i64 %buckets18, %multmp
  store i64 %addtmp20, ptr %entry_addr, align 4
  %state = alloca i64, align 8
  %entry_addr21 = load i64, ptr %entry_addr, align 4
  %calltmp22 = call { i64, ptr, i8 } @mem.load64(i64 %entry_addr21)
  %raw.value23 = extractvalue { i64, ptr, i8 } %calltmp22, 0
  store i64 %raw.value23, ptr %state, align 4
  %state24 = load i64, ptr %state, align 4
  %eqtmp = icmp eq i64 %state24, 0
  %ifcond25 = icmp ne i1 %eqtmp, false
  br i1 %ifcond25, label %then26, label %ifcont27

then26:                                           ; preds = %whilebody
  ret { i8, ptr, i8 } zeroinitializer

ifcont27:                                         ; preds = %whilebody
  %state28 = load i64, ptr %state, align 4
  %eqtmp29 = icmp eq i64 %state28, 1
  %ifcond30 = icmp ne i1 %eqtmp29, false
  br i1 %ifcond30, label %then31, label %ifcont54

then31:                                           ; preds = %ifcont27
  %ekey = alloca i64, align 8
  %entry_addr32 = load i64, ptr %entry_addr, align 4
  %addtmp33 = add i64 %entry_addr32, 8
  %calltmp34 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp33)
  %raw.value35 = extractvalue { i64, ptr, i8 } %calltmp34, 0
  store i64 %raw.value35, ptr %ekey, align 4
  %ekey36 = load i64, ptr %ekey, align 4
  %key37 = load i64, ptr %key.addr, align 4
  %eqtmp38 = icmp eq i64 %ekey36, %key37
  %ifcond39 = icmp ne i1 %eqtmp38, false
  br i1 %ifcond39, label %then40, label %ifcont53

then40:                                           ; preds = %then31
  %val = alloca i64, align 8
  %entry_addr41 = load i64, ptr %entry_addr, align 4
  %addtmp42 = add i64 %entry_addr41, 16
  %calltmp43 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp42)
  %raw.value44 = extractvalue { i64, ptr, i8 } %calltmp43, 0
  store i64 %raw.value44, ptr %val, align 4
  %out_val_ptr45 = load i64, ptr %out_val_ptr.addr, align 4
  %netmp = icmp ne i64 %out_val_ptr45, 0
  %ifcond46 = icmp ne i1 %netmp, false
  br i1 %ifcond46, label %then47, label %ifcont52

then47:                                           ; preds = %then40
  %out_val_ptr48 = load i64, ptr %out_val_ptr.addr, align 4
  %val49 = load i64, ptr %val, align 4
  %calltmp50 = call { i8, ptr, i8 } @mem.store64(i64 %out_val_ptr48, i64 %val49)
  %raw.value51 = extractvalue { i8, ptr, i8 } %calltmp50, 0
  br label %ifcont52

ifcont52:                                         ; preds = %then47, %then40
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont53:                                         ; preds = %then31
  br label %ifcont54

ifcont54:                                         ; preds = %ifcont53, %ifcont27
  %idx55 = load i64, ptr %idx, align 4
  %addtmp56 = add i64 %idx55, 1
  store i64 %addtmp56, ptr %idx, align 4
  %idx57 = load i64, ptr %idx, align 4
  %capacity58 = load i64, ptr %capacity, align 4
  %getmp = icmp sge i64 %idx57, %capacity58
  %ifcond59 = icmp ne i1 %getmp, false
  br i1 %ifcond59, label %then60, label %ifcont61

then60:                                           ; preds = %ifcont54
  store i64 0, ptr %idx, align 4
  br label %ifcont61

ifcont61:                                         ; preds = %then60, %ifcont54
  %i62 = load i64, ptr %i, align 4
  %addtmp63 = add i64 %i62, 1
  store i64 %addtmp63, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @intmap.remove(i64 %map, i64 %key) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %capacity, align 4
  %size = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 8
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %size, align 4
  %buckets = alloca i64, align 8
  %map5 = load i64, ptr %map.addr, align 4
  %addtmp6 = add i64 %map5, 16
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  store i64 %raw.value8, ptr %buckets, align 4
  %hash = alloca i64, align 8
  %key9 = load i64, ptr %key.addr, align 4
  %calltmp10 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash12 = load i64, ptr %hash, align 4
  %capacity13 = load i64, ptr %capacity, align 4
  %mod.iszero = icmp eq i64 %capacity13, 0
  %modtmp = srem i64 %hash12, %capacity13
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx14 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx14, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %idx15 = load i64, ptr %idx, align 4
  %capacity16 = load i64, ptr %capacity, align 4
  %addtmp17 = add i64 %idx15, %capacity16
  store i64 %addtmp17, ptr %idx, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont61, %ifcont
  %i18 = load i64, ptr %i, align 4
  %capacity19 = load i64, ptr %capacity, align 4
  %lttmp20 = icmp slt i64 %i18, %capacity19
  %whilecond21 = icmp ne i1 %lttmp20, false
  br i1 %whilecond21, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %entry_addr = alloca i64, align 8
  %buckets22 = load i64, ptr %buckets, align 4
  %idx23 = load i64, ptr %idx, align 4
  %multmp = mul i64 %idx23, 24
  %addtmp24 = add i64 %buckets22, %multmp
  store i64 %addtmp24, ptr %entry_addr, align 4
  %state = alloca i64, align 8
  %entry_addr25 = load i64, ptr %entry_addr, align 4
  %calltmp26 = call { i64, ptr, i8 } @mem.load64(i64 %entry_addr25)
  %raw.value27 = extractvalue { i64, ptr, i8 } %calltmp26, 0
  store i64 %raw.value27, ptr %state, align 4
  %state28 = load i64, ptr %state, align 4
  %eqtmp = icmp eq i64 %state28, 0
  %ifcond29 = icmp ne i1 %eqtmp, false
  br i1 %ifcond29, label %then30, label %ifcont31

then30:                                           ; preds = %whilebody
  ret { i8, ptr, i8 } zeroinitializer

ifcont31:                                         ; preds = %whilebody
  %state32 = load i64, ptr %state, align 4
  %eqtmp33 = icmp eq i64 %state32, 1
  %ifcond34 = icmp ne i1 %eqtmp33, false
  br i1 %ifcond34, label %then35, label %ifcont54

then35:                                           ; preds = %ifcont31
  %ekey = alloca i64, align 8
  %entry_addr36 = load i64, ptr %entry_addr, align 4
  %addtmp37 = add i64 %entry_addr36, 8
  %calltmp38 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp37)
  %raw.value39 = extractvalue { i64, ptr, i8 } %calltmp38, 0
  store i64 %raw.value39, ptr %ekey, align 4
  %ekey40 = load i64, ptr %ekey, align 4
  %key41 = load i64, ptr %key.addr, align 4
  %eqtmp42 = icmp eq i64 %ekey40, %key41
  %ifcond43 = icmp ne i1 %eqtmp42, false
  br i1 %ifcond43, label %then44, label %ifcont53

then44:                                           ; preds = %then35
  %entry_addr45 = load i64, ptr %entry_addr, align 4
  %calltmp46 = call { i8, ptr, i8 } @mem.store64(i64 %entry_addr45, i64 2)
  %raw.value47 = extractvalue { i8, ptr, i8 } %calltmp46, 0
  %map48 = load i64, ptr %map.addr, align 4
  %addtmp49 = add i64 %map48, 8
  %size50 = load i64, ptr %size, align 4
  %subtmp = sub i64 %size50, 1
  %calltmp51 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp49, i64 %subtmp)
  %raw.value52 = extractvalue { i8, ptr, i8 } %calltmp51, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont53:                                         ; preds = %then35
  br label %ifcont54

ifcont54:                                         ; preds = %ifcont53, %ifcont31
  %idx55 = load i64, ptr %idx, align 4
  %addtmp56 = add i64 %idx55, 1
  store i64 %addtmp56, ptr %idx, align 4
  %idx57 = load i64, ptr %idx, align 4
  %capacity58 = load i64, ptr %capacity, align 4
  %getmp = icmp sge i64 %idx57, %capacity58
  %ifcond59 = icmp ne i1 %getmp, false
  br i1 %ifcond59, label %then60, label %ifcont61

then60:                                           ; preds = %ifcont54
  store i64 0, ptr %idx, align 4
  br label %ifcont61

ifcont61:                                         ; preds = %then60, %ifcont54
  %i62 = load i64, ptr %i, align 4
  %addtmp63 = add i64 %i62, 1
  store i64 %addtmp63, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @intmap.destroy(i64 %map) {
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
  %buckets = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %buckets, align 4
  %buckets3 = load i64, ptr %buckets, align 4
  %netmp = icmp ne i64 %buckets3, 0
  %ifcond4 = icmp ne i1 %netmp, false
  br i1 %ifcond4, label %then5, label %ifcont7

then5:                                            ; preds = %ifcont
  %buckets6 = load i64, ptr %buckets, align 4
  %cast.inttoptr = inttoptr i64 %buckets6 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  br label %ifcont7

ifcont7:                                          ; preds = %then5, %ifcont
  %map8 = load i64, ptr %map.addr, align 4
  %cast.inttoptr9 = inttoptr i64 %map8 to ptr
  call void @npk_free(ptr %cast.inttoptr9)
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

declare ptr @npk_alloc(i64)

declare void @npk_free(ptr)

define linkonce_odr i32 @__intmap_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @hash.fnv1a(ptr %data, i64 %len) {
entry:
  %len.addr = alloca i64, align 8
  store i64 %len, ptr %len.addr, align 4
  %len1 = load i64, ptr %len.addr, align 4
  %letmp = icmp sle i64 %len1, 0
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %hash = alloca i64, align 8
  store i64 0, ptr %hash, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i2 = load i64, ptr %i, align 4
  %len3 = load i64, ptr %len.addr, align 4
  %lttmp = icmp slt i64 %i2, %len3
  %whilecond4 = icmp ne i1 %lttmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %addr = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %data to i64
  %i5 = load i64, ptr %i, align 4
  %addtmp = add i64 %cast.ptrtoint, %i5
  store i64 %addtmp, ptr %addr, align 4
  %byte = alloca i8, align 1
  %addr6 = load i64, ptr %addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.load8(i64 %addr6)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  store i8 %raw.value, ptr %byte, align 1
  %b64 = alloca i64, align 8
  %byte7 = load i8, ptr %byte, align 1
  %cast.sext = sext i8 %byte7 to i64
  store i64 %cast.sext, ptr %b64, align 4
  %b648 = load i64, ptr %b64, align 4
  %andtmp = and i64 %b648, 255
  store i64 %andtmp, ptr %b64, align 4
  %hash9 = load i64, ptr %hash, align 4
  %b6410 = load i64, ptr %b64, align 4
  %xortmp = xor i64 %hash9, %b6410
  store i64 %xortmp, ptr %hash, align 4
  %hash11 = load i64, ptr %hash, align 4
  %multmp = mul i64 %hash11, 1099511628211
  store i64 %multmp, ptr %hash, align 4
  %i12 = load i64, ptr %i, align 4
  %addtmp13 = add i64 %i12, 1
  store i64 %addtmp13, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %hash14 = load i64, ptr %hash, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %hash14, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @hash.fnv1a_32(ptr %data, i64 %len) {
entry:
  %len.addr = alloca i64, align 8
  store i64 %len, ptr %len.addr, align 4
  %len1 = load i64, ptr %len.addr, align 4
  %letmp = icmp sle i64 %len1, 0
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i32, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %hash = alloca i64, align 8
  store i64 2166136261, ptr %hash, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i2 = load i64, ptr %i, align 4
  %len3 = load i64, ptr %len.addr, align 4
  %lttmp = icmp slt i64 %i2, %len3
  %whilecond4 = icmp ne i1 %lttmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %addr = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %data to i64
  %i5 = load i64, ptr %i, align 4
  %addtmp = add i64 %cast.ptrtoint, %i5
  store i64 %addtmp, ptr %addr, align 4
  %byte = alloca i8, align 1
  %addr6 = load i64, ptr %addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.load8(i64 %addr6)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  store i8 %raw.value, ptr %byte, align 1
  %b64 = alloca i64, align 8
  %byte7 = load i8, ptr %byte, align 1
  %cast.sext = sext i8 %byte7 to i64
  store i64 %cast.sext, ptr %b64, align 4
  %b648 = load i64, ptr %b64, align 4
  %andtmp = and i64 %b648, 255
  store i64 %andtmp, ptr %b64, align 4
  %hash9 = load i64, ptr %hash, align 4
  %b6410 = load i64, ptr %b64, align 4
  %xortmp = xor i64 %hash9, %b6410
  store i64 %xortmp, ptr %hash, align 4
  %hash11 = load i64, ptr %hash, align 4
  %multmp = mul i64 %hash11, 16777619
  store i64 %multmp, ptr %hash, align 4
  %hash12 = load i64, ptr %hash, align 4
  %andtmp13 = and i64 %hash12, 4294967295
  store i64 %andtmp13, ptr %hash, align 4
  %i14 = load i64, ptr %i, align 4
  %addtmp15 = add i64 %i14, 1
  store i64 %addtmp15, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %hash16 = load i64, ptr %hash, align 4
  %cast.trunc = trunc i64 %hash16 to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %cast.trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @hash.murmur3_32(ptr %data, i64 %len) {
entry:
  %len.addr = alloca i64, align 8
  store i64 %len, ptr %len.addr, align 4
  %len1 = load i64, ptr %len.addr, align 4
  %letmp = icmp sle i64 %len1, 0
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i32, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %hash = alloca i64, align 8
  store i64 0, ptr %hash, align 4
  %c1 = alloca i64, align 8
  store i64 3432918353, ptr %c1, align 4
  %c2 = alloca i64, align 8
  store i64 461845907, ptr %c2, align 4
  %blocks = alloca i64, align 8
  %len2 = load i64, ptr %len.addr, align 4
  %divtmp = sdiv i64 %len2, 4
  %safe.divtmp = select i1 false, i64 9223372036854775807, i64 %divtmp
  store i64 %safe.divtmp, ptr %blocks, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i3 = load i64, ptr %i, align 4
  %blocks4 = load i64, ptr %blocks, align 4
  %lttmp = icmp slt i64 %i3, %blocks4
  %whilecond5 = icmp ne i1 %lttmp, false
  br i1 %whilecond5, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %addr = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %data to i64
  %i6 = load i64, ptr %i, align 4
  %multmp = mul i64 %i6, 4
  %addtmp = add i64 %cast.ptrtoint, %multmp
  store i64 %addtmp, ptr %addr, align 4
  %b0 = alloca i64, align 8
  %addr7 = load i64, ptr %addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.load8(i64 %addr7)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %cast.sext = sext i8 %raw.value to i64
  %andtmp = and i64 %cast.sext, 255
  store i64 %andtmp, ptr %b0, align 4
  %b1 = alloca i64, align 8
  %addr8 = load i64, ptr %addr, align 4
  %addtmp9 = add i64 %addr8, 1
  %calltmp10 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp9)
  %raw.value11 = extractvalue { i8, ptr, i8 } %calltmp10, 0
  %cast.sext12 = sext i8 %raw.value11 to i64
  %andtmp13 = and i64 %cast.sext12, 255
  store i64 %andtmp13, ptr %b1, align 4
  %b2 = alloca i64, align 8
  %addr14 = load i64, ptr %addr, align 4
  %addtmp15 = add i64 %addr14, 2
  %calltmp16 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp15)
  %raw.value17 = extractvalue { i8, ptr, i8 } %calltmp16, 0
  %cast.sext18 = sext i8 %raw.value17 to i64
  %andtmp19 = and i64 %cast.sext18, 255
  store i64 %andtmp19, ptr %b2, align 4
  %b3 = alloca i64, align 8
  %addr20 = load i64, ptr %addr, align 4
  %addtmp21 = add i64 %addr20, 3
  %calltmp22 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp21)
  %raw.value23 = extractvalue { i8, ptr, i8 } %calltmp22, 0
  %cast.sext24 = sext i8 %raw.value23 to i64
  %andtmp25 = and i64 %cast.sext24, 255
  store i64 %andtmp25, ptr %b3, align 4
  %k = alloca i64, align 8
  %b026 = load i64, ptr %b0, align 4
  %b127 = load i64, ptr %b1, align 4
  %shltmp = shl i64 %b127, 8
  %ortmp = or i64 %b026, %shltmp
  %b228 = load i64, ptr %b2, align 4
  %shltmp29 = shl i64 %b228, 16
  %ortmp30 = or i64 %ortmp, %shltmp29
  %b331 = load i64, ptr %b3, align 4
  %shltmp32 = shl i64 %b331, 24
  %ortmp33 = or i64 %ortmp30, %shltmp32
  store i64 %ortmp33, ptr %k, align 4
  %k34 = load i64, ptr %k, align 4
  %c135 = load i64, ptr %c1, align 4
  %multmp36 = mul i64 %k34, %c135
  %andtmp37 = and i64 %multmp36, 4294967295
  store i64 %andtmp37, ptr %k, align 4
  %k38 = load i64, ptr %k, align 4
  %shltmp39 = shl i64 %k38, 15
  %k40 = load i64, ptr %k, align 4
  %ashrtmp = ashr i64 %k40, 17
  %ortmp41 = or i64 %shltmp39, %ashrtmp
  %andtmp42 = and i64 %ortmp41, 4294967295
  store i64 %andtmp42, ptr %k, align 4
  %k43 = load i64, ptr %k, align 4
  %c244 = load i64, ptr %c2, align 4
  %multmp45 = mul i64 %k43, %c244
  %andtmp46 = and i64 %multmp45, 4294967295
  store i64 %andtmp46, ptr %k, align 4
  %hash47 = load i64, ptr %hash, align 4
  %k48 = load i64, ptr %k, align 4
  %xortmp = xor i64 %hash47, %k48
  store i64 %xortmp, ptr %hash, align 4
  %hash49 = load i64, ptr %hash, align 4
  %shltmp50 = shl i64 %hash49, 13
  %hash51 = load i64, ptr %hash, align 4
  %ashrtmp52 = ashr i64 %hash51, 19
  %ortmp53 = or i64 %shltmp50, %ashrtmp52
  %andtmp54 = and i64 %ortmp53, 4294967295
  store i64 %andtmp54, ptr %hash, align 4
  %hash55 = load i64, ptr %hash, align 4
  %multmp56 = mul i64 %hash55, 5
  %addtmp57 = add i64 %multmp56, 3864292196
  %andtmp58 = and i64 %addtmp57, 4294967295
  store i64 %andtmp58, ptr %hash, align 4
  %i59 = load i64, ptr %i, align 4
  %addtmp60 = add i64 %i59, 1
  store i64 %addtmp60, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %tail_idx = alloca i64, align 8
  %blocks61 = load i64, ptr %blocks, align 4
  %multmp62 = mul i64 %blocks61, 4
  store i64 %multmp62, ptr %tail_idx, align 4
  %tail_len = alloca i64, align 8
  %len63 = load i64, ptr %len.addr, align 4
  %tail_idx64 = load i64, ptr %tail_idx, align 4
  %subtmp = sub i64 %len63, %tail_idx64
  store i64 %subtmp, ptr %tail_len, align 4
  %k1 = alloca i64, align 8
  store i64 0, ptr %k1, align 4
  %tail_addr = alloca i64, align 8
  %cast.ptrtoint65 = ptrtoint ptr %data to i64
  %tail_idx66 = load i64, ptr %tail_idx, align 4
  %addtmp67 = add i64 %cast.ptrtoint65, %tail_idx66
  store i64 %addtmp67, ptr %tail_addr, align 4
  %tail_len68 = load i64, ptr %tail_len, align 4
  %eqtmp = icmp eq i64 %tail_len68, 3
  %ifcond69 = icmp ne i1 %eqtmp, false
  br i1 %ifcond69, label %then70, label %else

then70:                                           ; preds = %afterwhile
  %k171 = load i64, ptr %k1, align 4
  %tail_addr72 = load i64, ptr %tail_addr, align 4
  %addtmp73 = add i64 %tail_addr72, 2
  %calltmp74 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp73)
  %raw.value75 = extractvalue { i8, ptr, i8 } %calltmp74, 0
  %cast.sext76 = sext i8 %raw.value75 to i64
  %andtmp77 = and i64 %cast.sext76, 255
  %shltmp78 = shl i64 %andtmp77, 16
  %xortmp79 = xor i64 %k171, %shltmp78
  store i64 %xortmp79, ptr %k1, align 4
  %k180 = load i64, ptr %k1, align 4
  %tail_addr81 = load i64, ptr %tail_addr, align 4
  %addtmp82 = add i64 %tail_addr81, 1
  %calltmp83 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp82)
  %raw.value84 = extractvalue { i8, ptr, i8 } %calltmp83, 0
  %cast.sext85 = sext i8 %raw.value84 to i64
  %andtmp86 = and i64 %cast.sext85, 255
  %shltmp87 = shl i64 %andtmp86, 8
  %xortmp88 = xor i64 %k180, %shltmp87
  store i64 %xortmp88, ptr %k1, align 4
  %k189 = load i64, ptr %k1, align 4
  %tail_addr90 = load i64, ptr %tail_addr, align 4
  %calltmp91 = call { i8, ptr, i8 } @mem.load8(i64 %tail_addr90)
  %raw.value92 = extractvalue { i8, ptr, i8 } %calltmp91, 0
  %cast.sext93 = sext i8 %raw.value92 to i64
  %andtmp94 = and i64 %cast.sext93, 255
  %xortmp95 = xor i64 %k189, %andtmp94
  store i64 %xortmp95, ptr %k1, align 4
  %k196 = load i64, ptr %k1, align 4
  %c197 = load i64, ptr %c1, align 4
  %multmp98 = mul i64 %k196, %c197
  %andtmp99 = and i64 %multmp98, 4294967295
  store i64 %andtmp99, ptr %k1, align 4
  %k1100 = load i64, ptr %k1, align 4
  %shltmp101 = shl i64 %k1100, 15
  %k1102 = load i64, ptr %k1, align 4
  %ashrtmp103 = ashr i64 %k1102, 17
  %ortmp104 = or i64 %shltmp101, %ashrtmp103
  %andtmp105 = and i64 %ortmp104, 4294967295
  store i64 %andtmp105, ptr %k1, align 4
  %k1106 = load i64, ptr %k1, align 4
  %c2107 = load i64, ptr %c2, align 4
  %multmp108 = mul i64 %k1106, %c2107
  %andtmp109 = and i64 %multmp108, 4294967295
  store i64 %andtmp109, ptr %k1, align 4
  %hash110 = load i64, ptr %hash, align 4
  %k1111 = load i64, ptr %k1, align 4
  %xortmp112 = xor i64 %hash110, %k1111
  store i64 %xortmp112, ptr %hash, align 4
  br label %ifcont181

else:                                             ; preds = %afterwhile
  %tail_len113 = load i64, ptr %tail_len, align 4
  %eqtmp114 = icmp eq i64 %tail_len113, 2
  %ifcond115 = icmp ne i1 %eqtmp114, false
  br i1 %ifcond115, label %then116, label %else150

then116:                                          ; preds = %else
  %k1117 = load i64, ptr %k1, align 4
  %tail_addr118 = load i64, ptr %tail_addr, align 4
  %addtmp119 = add i64 %tail_addr118, 1
  %calltmp120 = call { i8, ptr, i8 } @mem.load8(i64 %addtmp119)
  %raw.value121 = extractvalue { i8, ptr, i8 } %calltmp120, 0
  %cast.sext122 = sext i8 %raw.value121 to i64
  %andtmp123 = and i64 %cast.sext122, 255
  %shltmp124 = shl i64 %andtmp123, 8
  %xortmp125 = xor i64 %k1117, %shltmp124
  store i64 %xortmp125, ptr %k1, align 4
  %k1126 = load i64, ptr %k1, align 4
  %tail_addr127 = load i64, ptr %tail_addr, align 4
  %calltmp128 = call { i8, ptr, i8 } @mem.load8(i64 %tail_addr127)
  %raw.value129 = extractvalue { i8, ptr, i8 } %calltmp128, 0
  %cast.sext130 = sext i8 %raw.value129 to i64
  %andtmp131 = and i64 %cast.sext130, 255
  %xortmp132 = xor i64 %k1126, %andtmp131
  store i64 %xortmp132, ptr %k1, align 4
  %k1133 = load i64, ptr %k1, align 4
  %c1134 = load i64, ptr %c1, align 4
  %multmp135 = mul i64 %k1133, %c1134
  %andtmp136 = and i64 %multmp135, 4294967295
  store i64 %andtmp136, ptr %k1, align 4
  %k1137 = load i64, ptr %k1, align 4
  %shltmp138 = shl i64 %k1137, 15
  %k1139 = load i64, ptr %k1, align 4
  %ashrtmp140 = ashr i64 %k1139, 17
  %ortmp141 = or i64 %shltmp138, %ashrtmp140
  %andtmp142 = and i64 %ortmp141, 4294967295
  store i64 %andtmp142, ptr %k1, align 4
  %k1143 = load i64, ptr %k1, align 4
  %c2144 = load i64, ptr %c2, align 4
  %multmp145 = mul i64 %k1143, %c2144
  %andtmp146 = and i64 %multmp145, 4294967295
  store i64 %andtmp146, ptr %k1, align 4
  %hash147 = load i64, ptr %hash, align 4
  %k1148 = load i64, ptr %k1, align 4
  %xortmp149 = xor i64 %hash147, %k1148
  store i64 %xortmp149, ptr %hash, align 4
  br label %ifcont180

else150:                                          ; preds = %else
  %tail_len151 = load i64, ptr %tail_len, align 4
  %eqtmp152 = icmp eq i64 %tail_len151, 1
  %ifcond153 = icmp ne i1 %eqtmp152, false
  br i1 %ifcond153, label %then154, label %ifcont179

then154:                                          ; preds = %else150
  %k1155 = load i64, ptr %k1, align 4
  %tail_addr156 = load i64, ptr %tail_addr, align 4
  %calltmp157 = call { i8, ptr, i8 } @mem.load8(i64 %tail_addr156)
  %raw.value158 = extractvalue { i8, ptr, i8 } %calltmp157, 0
  %cast.sext159 = sext i8 %raw.value158 to i64
  %andtmp160 = and i64 %cast.sext159, 255
  %xortmp161 = xor i64 %k1155, %andtmp160
  store i64 %xortmp161, ptr %k1, align 4
  %k1162 = load i64, ptr %k1, align 4
  %c1163 = load i64, ptr %c1, align 4
  %multmp164 = mul i64 %k1162, %c1163
  %andtmp165 = and i64 %multmp164, 4294967295
  store i64 %andtmp165, ptr %k1, align 4
  %k1166 = load i64, ptr %k1, align 4
  %shltmp167 = shl i64 %k1166, 15
  %k1168 = load i64, ptr %k1, align 4
  %ashrtmp169 = ashr i64 %k1168, 17
  %ortmp170 = or i64 %shltmp167, %ashrtmp169
  %andtmp171 = and i64 %ortmp170, 4294967295
  store i64 %andtmp171, ptr %k1, align 4
  %k1172 = load i64, ptr %k1, align 4
  %c2173 = load i64, ptr %c2, align 4
  %multmp174 = mul i64 %k1172, %c2173
  %andtmp175 = and i64 %multmp174, 4294967295
  store i64 %andtmp175, ptr %k1, align 4
  %hash176 = load i64, ptr %hash, align 4
  %k1177 = load i64, ptr %k1, align 4
  %xortmp178 = xor i64 %hash176, %k1177
  store i64 %xortmp178, ptr %hash, align 4
  br label %ifcont179

ifcont179:                                        ; preds = %then154, %else150
  br label %ifcont180

ifcont180:                                        ; preds = %ifcont179, %then116
  br label %ifcont181

ifcont181:                                        ; preds = %ifcont180, %then70
  %hash182 = load i64, ptr %hash, align 4
  %len183 = load i64, ptr %len.addr, align 4
  %xortmp184 = xor i64 %hash182, %len183
  store i64 %xortmp184, ptr %hash, align 4
  %hash185 = load i64, ptr %hash, align 4
  %hash186 = load i64, ptr %hash, align 4
  %ashrtmp187 = ashr i64 %hash186, 16
  %xortmp188 = xor i64 %hash185, %ashrtmp187
  store i64 %xortmp188, ptr %hash, align 4
  %hash189 = load i64, ptr %hash, align 4
  %multmp190 = mul i64 %hash189, 2246822507
  %andtmp191 = and i64 %multmp190, 4294967295
  store i64 %andtmp191, ptr %hash, align 4
  %hash192 = load i64, ptr %hash, align 4
  %hash193 = load i64, ptr %hash, align 4
  %ashrtmp194 = ashr i64 %hash193, 13
  %xortmp195 = xor i64 %hash192, %ashrtmp194
  store i64 %xortmp195, ptr %hash, align 4
  %hash196 = load i64, ptr %hash, align 4
  %multmp197 = mul i64 %hash196, 3266489909
  %andtmp198 = and i64 %multmp197, 4294967295
  store i64 %andtmp198, ptr %hash, align 4
  %hash199 = load i64, ptr %hash, align 4
  %hash200 = load i64, ptr %hash, align 4
  %ashrtmp201 = ashr i64 %hash200, 16
  %xortmp202 = xor i64 %hash199, %ashrtmp201
  store i64 %xortmp202, ptr %hash, align 4
  %hash203 = load i64, ptr %hash, align 4
  %cast.trunc = trunc i64 %hash203 to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %cast.trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @hash.hash_str(ptr %str) {
entry:
  %cast.ptrtoint = ptrtoint ptr %str to i64
  %eqtmp = icmp eq i64 %cast.ptrtoint, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %len = alloca i64, align 8
  store i64 0, ptr %len, align 4
  %addr = alloca i64, align 8
  %cast.ptrtoint1 = ptrtoint ptr %str to i64
  store i64 %cast.ptrtoint1, ptr %addr, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %addr2 = load i64, ptr %addr, align 4
  %len3 = load i64, ptr %len, align 4
  %addtmp = add i64 %addr2, %len3
  %calltmp = call { i8, ptr, i8 } @mem.load8(i64 %addtmp)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %netmp = icmp ne i8 %raw.value, 0
  %whilecond4 = icmp ne i1 %netmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %len5 = load i64, ptr %len, align 4
  %addtmp6 = add i64 %len5, 1
  store i64 %addtmp6, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %len7 = load i64, ptr %len, align 4
  %calltmp8 = call { i64, ptr, i8 } @hash.fnv1a(ptr %str, i64 %len7)
  %raw.value9 = extractvalue { i64, ptr, i8 } %calltmp8, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value9, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__hash_init() {
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
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp4 = and i64 %andtmp, 281474976710655
  store i64 %andtmp4, ptr %handle, align 4
  %node_size5 = load i64, ptr %node_size.addr, align 4
  %lttmp = icmp slt i64 %node_size5, 8
  %ifcond6 = icmp ne i1 %lttmp, false
  br i1 %ifcond6, label %then7, label %ifcont8

then7:                                            ; preds = %ifcont
  store i64 8, ptr %node_size.addr, align 4
  br label %ifcont8

ifcont8:                                          ; preds = %then7, %ifcont
  %handle9 = load i64, ptr %handle, align 4
  %addtmp = add i64 %handle9, 0
  %node_size10 = load i64, ptr %node_size.addr, align 4
  %calltmp = call { i8, ptr, i8 } @mem.store64(i64 %addtmp, i64 %node_size10)
  %raw.value = extractvalue { i8, ptr, i8 } %calltmp, 0
  %handle11 = load i64, ptr %handle, align 4
  %addtmp12 = add i64 %handle11, 8
  %calltmp13 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp12, i64 0)
  %raw.value14 = extractvalue { i8, ptr, i8 } %calltmp13, 0
  %handle15 = load i64, ptr %handle, align 4
  %addtmp16 = add i64 %handle15, 16
  %calltmp17 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp16, i64 0)
  %raw.value18 = extractvalue { i8, ptr, i8 } %calltmp17, 0
  %handle19 = load i64, ptr %handle, align 4
  %addtmp20 = add i64 %handle19, 24
  %calltmp21 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp20, i64 32768)
  %raw.value22 = extractvalue { i8, ptr, i8 } %calltmp21, 0
  %handle23 = load i64, ptr %handle, align 4
  %addtmp24 = add i64 %handle23, 32
  %calltmp25 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp24, i64 0)
  %raw.value26 = extractvalue { i8, ptr, i8 } %calltmp25, 0
  %handle27 = load i64, ptr %handle, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %handle27, 0
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
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %then
  %i15 = load i64, ptr %i, align 4
  %node_size16 = load i64, ptr %node_size, align 4
  %lttmp = icmp slt i64 %i15, %node_size16
  %whilecond17 = icmp ne i1 %lttmp, false
  br i1 %whilecond17, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %free_head18 = load i64, ptr %free_head, align 4
  %i19 = load i64, ptr %i, align 4
  %addtmp20 = add i64 %free_head18, %i19
  %calltmp21 = call { i8, ptr, i8 } @mem.store8(i64 %addtmp20, i8 0)
  %raw.value22 = extractvalue { i8, ptr, i8 } %calltmp21, 0
  %i23 = load i64, ptr %i, align 4
  %addtmp24 = add i64 %i23, 1
  store i64 %addtmp24, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %free_head25 = load i64, ptr %free_head, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %free_head25, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %block_size = alloca i64, align 8
  %handle26 = load i64, ptr %handle.addr, align 4
  %addtmp27 = add i64 %handle26, 24
  %calltmp28 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp27)
  %raw.value29 = extractvalue { i64, ptr, i8 } %calltmp28, 0
  store i64 %raw.value29, ptr %block_size, align 4
  %head_block = alloca i64, align 8
  %handle30 = load i64, ptr %handle.addr, align 4
  %addtmp31 = add i64 %handle30, 8
  %calltmp32 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp31)
  %raw.value33 = extractvalue { i64, ptr, i8 } %calltmp32, 0
  store i64 %raw.value33, ptr %head_block, align 4
  %offset = alloca i64, align 8
  %handle34 = load i64, ptr %handle.addr, align 4
  %addtmp35 = add i64 %handle34, 16
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %offset, align 4
  %head_block38 = load i64, ptr %head_block, align 4
  %eqtmp = icmp eq i64 %head_block38, 0
  %ifcond39 = icmp ne i1 %eqtmp, false
  br i1 %ifcond39, label %then40, label %else

then40:                                           ; preds = %ifcont
  %blk = call ptr @npk_alloc(i64 8)
  %block_size41 = load i64, ptr %block_size, align 4
  %wild_ptr = call ptr @npk_alloc(i64 %block_size41)
  store ptr %wild_ptr, ptr %blk, align 8
  %blk42 = load ptr, ptr %blk, align 8
  %eqtmp43 = icmp eq ptr %blk42, null
  %ifcond44 = icmp ne i1 %eqtmp43, false
  br i1 %ifcond44, label %then45, label %ifcont46

then45:                                           ; preds = %then40
  ret { i64, ptr, i8 } zeroinitializer

ifcont46:                                         ; preds = %then40
  %new_block = alloca i64, align 8
  %blk47 = load ptr, ptr %blk, align 8
  %blk48 = load ptr, ptr %blk, align 8
  %cast.ptrtoint = ptrtoint ptr %blk48 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  %andtmp49 = and i64 %andtmp, 281474976710655
  store i64 %andtmp49, ptr %new_block, align 4
  %new_block50 = load i64, ptr %new_block, align 4
  %calltmp51 = call { i8, ptr, i8 } @mem.store64(i64 %new_block50, i64 0)
  %raw.value52 = extractvalue { i8, ptr, i8 } %calltmp51, 0
  %handle53 = load i64, ptr %handle.addr, align 4
  %addtmp54 = add i64 %handle53, 8
  %new_block55 = load i64, ptr %new_block, align 4
  %calltmp56 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp54, i64 %new_block55)
  %raw.value57 = extractvalue { i8, ptr, i8 } %calltmp56, 0
  %new_block58 = load i64, ptr %new_block, align 4
  store i64 %new_block58, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle59 = load i64, ptr %handle.addr, align 4
  %addtmp60 = add i64 %handle59, 16
  %offset61 = load i64, ptr %offset, align 4
  %calltmp62 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp60, i64 %offset61)
  %raw.value63 = extractvalue { i8, ptr, i8 } %calltmp62, 0
  br label %ifcont100

else:                                             ; preds = %ifcont
  %offset64 = load i64, ptr %offset, align 4
  %node_size65 = load i64, ptr %node_size, align 4
  %addtmp66 = add i64 %offset64, %node_size65
  %block_size67 = load i64, ptr %block_size, align 4
  %gttmp = icmp sgt i64 %addtmp66, %block_size67
  %ifcond68 = icmp ne i1 %gttmp, false
  br i1 %ifcond68, label %then69, label %ifcont99

then69:                                           ; preds = %else
  %blk70 = call ptr @npk_alloc(i64 8)
  %block_size71 = load i64, ptr %block_size, align 4
  %wild_ptr72 = call ptr @npk_alloc(i64 %block_size71)
  store ptr %wild_ptr72, ptr %blk70, align 8
  %blk73 = load ptr, ptr %blk70, align 8
  %eqtmp74 = icmp eq ptr %blk73, null
  %ifcond75 = icmp ne i1 %eqtmp74, false
  br i1 %ifcond75, label %then76, label %ifcont77

then76:                                           ; preds = %then69
  ret { i64, ptr, i8 } zeroinitializer

ifcont77:                                         ; preds = %then69
  %new_block78 = alloca i64, align 8
  %blk79 = load ptr, ptr %blk70, align 8
  %blk80 = load ptr, ptr %blk70, align 8
  %cast.ptrtoint81 = ptrtoint ptr %blk80 to i64
  %andtmp82 = and i64 %cast.ptrtoint81, 281474976710655
  %andtmp83 = and i64 %andtmp82, 281474976710655
  store i64 %andtmp83, ptr %new_block78, align 4
  %new_block84 = load i64, ptr %new_block78, align 4
  %head_block85 = load i64, ptr %head_block, align 4
  %calltmp86 = call { i8, ptr, i8 } @mem.store64(i64 %new_block84, i64 %head_block85)
  %raw.value87 = extractvalue { i8, ptr, i8 } %calltmp86, 0
  %handle88 = load i64, ptr %handle.addr, align 4
  %addtmp89 = add i64 %handle88, 8
  %new_block90 = load i64, ptr %new_block78, align 4
  %calltmp91 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp89, i64 %new_block90)
  %raw.value92 = extractvalue { i8, ptr, i8 } %calltmp91, 0
  %new_block93 = load i64, ptr %new_block78, align 4
  store i64 %new_block93, ptr %head_block, align 4
  store i64 8, ptr %offset, align 4
  %handle94 = load i64, ptr %handle.addr, align 4
  %addtmp95 = add i64 %handle94, 16
  %offset96 = load i64, ptr %offset, align 4
  %calltmp97 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp95, i64 %offset96)
  %raw.value98 = extractvalue { i8, ptr, i8 } %calltmp97, 0
  br label %ifcont99

ifcont99:                                         ; preds = %ifcont77, %else
  br label %ifcont100

ifcont100:                                        ; preds = %ifcont99, %ifcont46
  %ptr = alloca i64, align 8
  %head_block101 = load i64, ptr %head_block, align 4
  %offset102 = load i64, ptr %offset, align 4
  %addtmp103 = add i64 %head_block101, %offset102
  store i64 %addtmp103, ptr %ptr, align 4
  %handle104 = load i64, ptr %handle.addr, align 4
  %addtmp105 = add i64 %handle104, 16
  %offset106 = load i64, ptr %offset, align 4
  %node_size107 = load i64, ptr %node_size, align 4
  %addtmp108 = add i64 %offset106, %node_size107
  %calltmp109 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp105, i64 %addtmp108)
  %raw.value110 = extractvalue { i8, ptr, i8 } %calltmp109, 0
  %j = alloca i64, align 8
  store i64 0, ptr %j, align 4
  br label %whilecond111

whilecond111:                                     ; preds = %whilebody116, %ifcont100
  %j112 = load i64, ptr %j, align 4
  %node_size113 = load i64, ptr %node_size, align 4
  %lttmp114 = icmp slt i64 %j112, %node_size113
  %whilecond115 = icmp ne i1 %lttmp114, false
  br i1 %whilecond115, label %whilebody116, label %afterwhile119

whilebody116:                                     ; preds = %whilecond111
  %j117 = load i64, ptr %j, align 4
  %addtmp118 = add i64 %j117, 1
  store i64 %addtmp118, ptr %j, align 4
  call void @npk_gc_safepoint()
  br label %whilecond111

afterwhile119:                                    ; preds = %whilecond111
  %ptr120 = load i64, ptr %ptr, align 4
  %result.val121 = insertvalue { i64, ptr, i8 } undef, i64 %ptr120, 0
  %result.err122 = insertvalue { i64, ptr, i8 } %result.val121, ptr null, 1
  %result.is_error123 = insertvalue { i64, ptr, i8 } %result.err122, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error123
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

define linkonce_odr i32 @__allocator_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @mapc.mapc_create(i64 %initial_capacity) {
entry:
  %initial_capacity.addr = alloca i64, align 8
  store i64 %initial_capacity, ptr %initial_capacity.addr, align 4
  %initial_capacity1 = load i64, ptr %initial_capacity.addr, align 4
  %lttmp = icmp slt i64 %initial_capacity1, 8
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  store i64 8, ptr %initial_capacity.addr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %allocator = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @allocator.MapAllocator_create(i64 24)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %allocator, align 4
  %allocator2 = load i64, ptr %allocator, align 4
  %eqtmp = icmp eq i64 %allocator2, 0
  %ifcond3 = icmp ne i1 %eqtmp, false
  br i1 %ifcond3, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } zeroinitializer

ifcont5:                                          ; preds = %ifcont
  %header_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 32)
  store ptr %wild_ptr, ptr %header_ptr, align 8
  %header_ptr6 = load ptr, ptr %header_ptr, align 8
  %header_ptr7 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %header_ptr7 to i64
  %eqtmp8 = icmp eq i64 %cast.ptrtoint, 0
  %ifcond9 = icmp ne i1 %eqtmp8, false
  br i1 %ifcond9, label %then10, label %ifcont14

then10:                                           ; preds = %ifcont5
  %allocator11 = load i64, ptr %allocator, align 4
  %calltmp12 = call { i8, ptr, i8 } @allocator.MapAllocator_destroy(i64 %allocator11)
  %raw.value13 = extractvalue { i8, ptr, i8 } %calltmp12, 0
  ret { i64, ptr, i8 } zeroinitializer

ifcont14:                                         ; preds = %ifcont5
  %buckets_size = alloca i64, align 8
  %initial_capacity15 = load i64, ptr %initial_capacity.addr, align 4
  %multmp = mul i64 %initial_capacity15, 8
  store i64 %multmp, ptr %buckets_size, align 4
  %buckets_ptr = call ptr @npk_alloc(i64 8)
  %buckets_size16 = load i64, ptr %buckets_size, align 4
  %wild_ptr17 = call ptr @npk_alloc(i64 %buckets_size16)
  store ptr %wild_ptr17, ptr %buckets_ptr, align 8
  %buckets_ptr18 = load ptr, ptr %buckets_ptr, align 8
  %buckets_ptr19 = load ptr, ptr %buckets_ptr, align 8
  %cast.ptrtoint20 = ptrtoint ptr %buckets_ptr19 to i64
  %eqtmp21 = icmp eq i64 %cast.ptrtoint20, 0
  %ifcond22 = icmp ne i1 %eqtmp21, false
  br i1 %ifcond22, label %then23, label %ifcont28

then23:                                           ; preds = %ifcont14
  %header_ptr24 = load ptr, ptr %header_ptr, align 8
  call void @npk_free(ptr %header_ptr24)
  %allocator25 = load i64, ptr %allocator, align 4
  %calltmp26 = call { i8, ptr, i8 } @allocator.MapAllocator_destroy(i64 %allocator25)
  %raw.value27 = extractvalue { i8, ptr, i8 } %calltmp26, 0
  ret { i64, ptr, i8 } zeroinitializer

ifcont28:                                         ; preds = %ifcont14
  %b_addr = alloca i64, align 8
  %buckets_ptr29 = load ptr, ptr %buckets_ptr, align 8
  %buckets_ptr30 = load ptr, ptr %buckets_ptr, align 8
  %cast.ptrtoint31 = ptrtoint ptr %buckets_ptr30 to i64
  %andtmp = and i64 %cast.ptrtoint31, 281474976710655
  store i64 %andtmp, ptr %b_addr, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont28
  %i32 = load i64, ptr %i, align 4
  %buckets_size33 = load i64, ptr %buckets_size, align 4
  %lttmp34 = icmp slt i64 %i32, %buckets_size33
  %whilecond35 = icmp ne i1 %lttmp34, false
  br i1 %whilecond35, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %b_addr36 = load i64, ptr %b_addr, align 4
  %i37 = load i64, ptr %i, align 4
  %addtmp = add i64 %b_addr36, %i37
  %calltmp38 = call { i8, ptr, i8 } @mem.store8(i64 %addtmp, i8 0)
  %raw.value39 = extractvalue { i8, ptr, i8 } %calltmp38, 0
  %i40 = load i64, ptr %i, align 4
  %addtmp41 = add i64 %i40, 1
  store i64 %addtmp41, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %h_addr = alloca i64, align 8
  %header_ptr42 = load ptr, ptr %header_ptr, align 8
  %header_ptr43 = load ptr, ptr %header_ptr, align 8
  %cast.ptrtoint44 = ptrtoint ptr %header_ptr43 to i64
  %andtmp45 = and i64 %cast.ptrtoint44, 281474976710655
  store i64 %andtmp45, ptr %h_addr, align 4
  %h_addr46 = load i64, ptr %h_addr, align 4
  %initial_capacity47 = load i64, ptr %initial_capacity.addr, align 4
  %calltmp48 = call { i8, ptr, i8 } @mem.store64(i64 %h_addr46, i64 %initial_capacity47)
  %raw.value49 = extractvalue { i8, ptr, i8 } %calltmp48, 0
  %h_addr50 = load i64, ptr %h_addr, align 4
  %addtmp51 = add i64 %h_addr50, 8
  %calltmp52 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp51, i64 0)
  %raw.value53 = extractvalue { i8, ptr, i8 } %calltmp52, 0
  %h_addr54 = load i64, ptr %h_addr, align 4
  %addtmp55 = add i64 %h_addr54, 16
  %b_addr56 = load i64, ptr %b_addr, align 4
  %calltmp57 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp55, i64 %b_addr56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  %h_addr59 = load i64, ptr %h_addr, align 4
  %addtmp60 = add i64 %h_addr59, 24
  %allocator61 = load i64, ptr %allocator, align 4
  %calltmp62 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp60, i64 %allocator61)
  %raw.value63 = extractvalue { i8, ptr, i8 } %calltmp62, 0
  %h_addr64 = load i64, ptr %h_addr, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %h_addr64, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i8, ptr, i8 } @mapc._mapc_rehash(i64 %map) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %old_capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %old_capacity, align 4
  %old_buckets = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %old_buckets, align 4
  %new_capacity = alloca i64, align 8
  %old_capacity5 = load i64, ptr %old_capacity, align 4
  %multmp = mul i64 %old_capacity5, 2
  store i64 %multmp, ptr %new_capacity, align 4
  %new_buckets_size = alloca i64, align 8
  %new_capacity6 = load i64, ptr %new_capacity, align 4
  %multmp7 = mul i64 %new_capacity6, 8
  store i64 %multmp7, ptr %new_buckets_size, align 4
  %new_buckets_ptr = call ptr @npk_alloc(i64 8)
  %new_buckets_size8 = load i64, ptr %new_buckets_size, align 4
  %wild_ptr = call ptr @npk_alloc(i64 %new_buckets_size8)
  store ptr %wild_ptr, ptr %new_buckets_ptr, align 8
  %new_buckets_ptr9 = load ptr, ptr %new_buckets_ptr, align 8
  %new_buckets_ptr10 = load ptr, ptr %new_buckets_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %new_buckets_ptr10 to i64
  %eqtmp = icmp eq i64 %cast.ptrtoint, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i8, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %new_b_addr = alloca i64, align 8
  %new_buckets_ptr11 = load ptr, ptr %new_buckets_ptr, align 8
  %new_buckets_ptr12 = load ptr, ptr %new_buckets_ptr, align 8
  %cast.ptrtoint13 = ptrtoint ptr %new_buckets_ptr12 to i64
  %andtmp = and i64 %cast.ptrtoint13, 281474976710655
  store i64 %andtmp, ptr %new_b_addr, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i14 = load i64, ptr %i, align 4
  %new_buckets_size15 = load i64, ptr %new_buckets_size, align 4
  %lttmp = icmp slt i64 %i14, %new_buckets_size15
  %whilecond16 = icmp ne i1 %lttmp, false
  br i1 %whilecond16, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %new_b_addr17 = load i64, ptr %new_b_addr, align 4
  %i18 = load i64, ptr %i, align 4
  %addtmp19 = add i64 %new_b_addr17, %i18
  %calltmp20 = call { i8, ptr, i8 } @mem.store8(i64 %addtmp19, i8 0)
  %raw.value21 = extractvalue { i8, ptr, i8 } %calltmp20, 0
  %i22 = load i64, ptr %i, align 4
  %addtmp23 = add i64 %i22, 1
  store i64 %addtmp23, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %map24 = load i64, ptr %map.addr, align 4
  %new_capacity25 = load i64, ptr %new_capacity, align 4
  %calltmp26 = call { i8, ptr, i8 } @mem.store64(i64 %map24, i64 %new_capacity25)
  %raw.value27 = extractvalue { i8, ptr, i8 } %calltmp26, 0
  %map28 = load i64, ptr %map.addr, align 4
  %addtmp29 = add i64 %map28, 16
  %new_b_addr30 = load i64, ptr %new_b_addr, align 4
  %calltmp31 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp29, i64 %new_b_addr30)
  %raw.value32 = extractvalue { i8, ptr, i8 } %calltmp31, 0
  %j = alloca i64, align 8
  store i64 0, ptr %j, align 4
  br label %whilecond33

whilecond33:                                      ; preds = %afterwhile86, %afterwhile
  %j34 = load i64, ptr %j, align 4
  %old_capacity35 = load i64, ptr %old_capacity, align 4
  %lttmp36 = icmp slt i64 %j34, %old_capacity35
  %whilecond37 = icmp ne i1 %lttmp36, false
  br i1 %whilecond37, label %whilebody38, label %afterwhile89

whilebody38:                                      ; preds = %whilecond33
  %head = alloca i64, align 8
  %old_buckets39 = load i64, ptr %old_buckets, align 4
  %j40 = load i64, ptr %j, align 4
  %multmp41 = mul i64 %j40, 8
  %addtmp42 = add i64 %old_buckets39, %multmp41
  %calltmp43 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp42)
  %raw.value44 = extractvalue { i64, ptr, i8 } %calltmp43, 0
  store i64 %raw.value44, ptr %head, align 4
  br label %whilecond45

whilecond45:                                      ; preds = %ifcont68, %whilebody38
  %head46 = load i64, ptr %head, align 4
  %netmp = icmp ne i64 %head46, 0
  %whilecond47 = icmp ne i1 %netmp, false
  br i1 %whilecond47, label %whilebody48, label %afterwhile86

whilebody48:                                      ; preds = %whilecond45
  %next = alloca i64, align 8
  %head49 = load i64, ptr %head, align 4
  %addtmp50 = add i64 %head49, 16
  %calltmp51 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp50)
  %raw.value52 = extractvalue { i64, ptr, i8 } %calltmp51, 0
  store i64 %raw.value52, ptr %next, align 4
  %key = alloca i64, align 8
  %head53 = load i64, ptr %head, align 4
  %calltmp54 = call { i64, ptr, i8 } @mem.load64(i64 %head53)
  %raw.value55 = extractvalue { i64, ptr, i8 } %calltmp54, 0
  store i64 %raw.value55, ptr %key, align 4
  %hash = alloca i64, align 8
  %key56 = load i64, ptr %key, align 4
  %calltmp57 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key56)
  %raw.value58 = extractvalue { i64, ptr, i8 } %calltmp57, 0
  store i64 %raw.value58, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash59 = load i64, ptr %hash, align 4
  %new_capacity60 = load i64, ptr %new_capacity, align 4
  %mod.iszero = icmp eq i64 %new_capacity60, 0
  %modtmp = srem i64 %hash59, %new_capacity60
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx61 = load i64, ptr %idx, align 4
  %lttmp62 = icmp slt i64 %idx61, 0
  %ifcond63 = icmp ne i1 %lttmp62, false
  br i1 %ifcond63, label %then64, label %ifcont68

then64:                                           ; preds = %whilebody48
  %idx65 = load i64, ptr %idx, align 4
  %new_capacity66 = load i64, ptr %new_capacity, align 4
  %addtmp67 = add i64 %idx65, %new_capacity66
  store i64 %addtmp67, ptr %idx, align 4
  br label %ifcont68

ifcont68:                                         ; preds = %then64, %whilebody48
  %new_bucket_addr = alloca i64, align 8
  %new_b_addr69 = load i64, ptr %new_b_addr, align 4
  %idx70 = load i64, ptr %idx, align 4
  %multmp71 = mul i64 %idx70, 8
  %addtmp72 = add i64 %new_b_addr69, %multmp71
  store i64 %addtmp72, ptr %new_bucket_addr, align 4
  %current_new_head = alloca i64, align 8
  %new_bucket_addr73 = load i64, ptr %new_bucket_addr, align 4
  %calltmp74 = call { i64, ptr, i8 } @mem.load64(i64 %new_bucket_addr73)
  %raw.value75 = extractvalue { i64, ptr, i8 } %calltmp74, 0
  store i64 %raw.value75, ptr %current_new_head, align 4
  %head76 = load i64, ptr %head, align 4
  %addtmp77 = add i64 %head76, 16
  %current_new_head78 = load i64, ptr %current_new_head, align 4
  %calltmp79 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp77, i64 %current_new_head78)
  %raw.value80 = extractvalue { i8, ptr, i8 } %calltmp79, 0
  %new_bucket_addr81 = load i64, ptr %new_bucket_addr, align 4
  %head82 = load i64, ptr %head, align 4
  %calltmp83 = call { i8, ptr, i8 } @mem.store64(i64 %new_bucket_addr81, i64 %head82)
  %raw.value84 = extractvalue { i8, ptr, i8 } %calltmp83, 0
  %next85 = load i64, ptr %next, align 4
  store i64 %next85, ptr %head, align 4
  call void @npk_gc_safepoint()
  br label %whilecond45

afterwhile86:                                     ; preds = %whilecond45
  %j87 = load i64, ptr %j, align 4
  %addtmp88 = add i64 %j87, 1
  store i64 %addtmp88, ptr %j, align 4
  call void @npk_gc_safepoint()
  br label %whilecond33

afterwhile89:                                     ; preds = %whilecond33
  %old_buckets90 = load i64, ptr %old_buckets, align 4
  %cast.inttoptr = inttoptr i64 %old_buckets90 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr { i8, ptr, i8 } @mapc.mapc_put(i64 %map, i64 %key, i64 %val) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %capacity, align 4
  %size = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 8
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %size, align 4
  %size5 = load i64, ptr %size, align 4
  %capacity6 = load i64, ptr %capacity, align 4
  %getmp = icmp sge i64 %size5, %capacity6
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %map7 = load i64, ptr %map.addr, align 4
  %calltmp8 = call { i8, ptr, i8 } @mapc._mapc_rehash(i64 %map7)
  %raw.value9 = extractvalue { i8, ptr, i8 } %calltmp8, 0
  %map10 = load i64, ptr %map.addr, align 4
  %calltmp11 = call { i64, ptr, i8 } @mem.load64(i64 %map10)
  %raw.value12 = extractvalue { i64, ptr, i8 } %calltmp11, 0
  store i64 %raw.value12, ptr %capacity, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %buckets = alloca i64, align 8
  %map13 = load i64, ptr %map.addr, align 4
  %addtmp14 = add i64 %map13, 16
  %calltmp15 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp14)
  %raw.value16 = extractvalue { i64, ptr, i8 } %calltmp15, 0
  store i64 %raw.value16, ptr %buckets, align 4
  %allocator = alloca i64, align 8
  %map17 = load i64, ptr %map.addr, align 4
  %addtmp18 = add i64 %map17, 24
  %calltmp19 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp18)
  %raw.value20 = extractvalue { i64, ptr, i8 } %calltmp19, 0
  store i64 %raw.value20, ptr %allocator, align 4
  %hash = alloca i64, align 8
  %key21 = load i64, ptr %key.addr, align 4
  %calltmp22 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key21)
  %raw.value23 = extractvalue { i64, ptr, i8 } %calltmp22, 0
  store i64 %raw.value23, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash24 = load i64, ptr %hash, align 4
  %capacity25 = load i64, ptr %capacity, align 4
  %mod.iszero = icmp eq i64 %capacity25, 0
  %modtmp = srem i64 %hash24, %capacity25
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx26 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx26, 0
  %ifcond27 = icmp ne i1 %lttmp, false
  br i1 %ifcond27, label %then28, label %ifcont32

then28:                                           ; preds = %ifcont
  %idx29 = load i64, ptr %idx, align 4
  %capacity30 = load i64, ptr %capacity, align 4
  %addtmp31 = add i64 %idx29, %capacity30
  store i64 %addtmp31, ptr %idx, align 4
  br label %ifcont32

ifcont32:                                         ; preds = %then28, %ifcont
  %bucket_addr = alloca i64, align 8
  %buckets33 = load i64, ptr %buckets, align 4
  %idx34 = load i64, ptr %idx, align 4
  %multmp = mul i64 %idx34, 8
  %addtmp35 = add i64 %buckets33, %multmp
  store i64 %addtmp35, ptr %bucket_addr, align 4
  %head = alloca i64, align 8
  %bucket_addr36 = load i64, ptr %bucket_addr, align 4
  %calltmp37 = call { i64, ptr, i8 } @mem.load64(i64 %bucket_addr36)
  %raw.value38 = extractvalue { i64, ptr, i8 } %calltmp37, 0
  store i64 %raw.value38, ptr %head, align 4
  %curr = alloca i64, align 8
  %head39 = load i64, ptr %head, align 4
  store i64 %head39, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont54, %ifcont32
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
  %ckey45 = load i64, ptr %ckey, align 4
  %key46 = load i64, ptr %key.addr, align 4
  %eqtmp = icmp eq i64 %ckey45, %key46
  %ifcond47 = icmp ne i1 %eqtmp, false
  br i1 %ifcond47, label %then48, label %ifcont54

then48:                                           ; preds = %whilebody
  %curr49 = load i64, ptr %curr, align 4
  %addtmp50 = add i64 %curr49, 8
  %val51 = load i64, ptr %val.addr, align 4
  %calltmp52 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp50, i64 %val51)
  %raw.value53 = extractvalue { i8, ptr, i8 } %calltmp52, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont54:                                         ; preds = %whilebody
  %curr55 = load i64, ptr %curr, align 4
  %addtmp56 = add i64 %curr55, 16
  %calltmp57 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp56)
  %raw.value58 = extractvalue { i64, ptr, i8 } %calltmp57, 0
  store i64 %raw.value58, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %new_node = alloca i64, align 8
  %allocator59 = load i64, ptr %allocator, align 4
  %calltmp60 = call { i64, ptr, i8 } @allocator.MapAllocator_alloc(i64 %allocator59)
  %raw.value61 = extractvalue { i64, ptr, i8 } %calltmp60, 0
  store i64 %raw.value61, ptr %new_node, align 4
  %new_node62 = load i64, ptr %new_node, align 4
  %eqtmp63 = icmp eq i64 %new_node62, 0
  %ifcond64 = icmp ne i1 %eqtmp63, false
  br i1 %ifcond64, label %then65, label %ifcont66

then65:                                           ; preds = %afterwhile
  ret { i8, ptr, i8 } zeroinitializer

ifcont66:                                         ; preds = %afterwhile
  %new_node67 = load i64, ptr %new_node, align 4
  %key68 = load i64, ptr %key.addr, align 4
  %calltmp69 = call { i8, ptr, i8 } @mem.store64(i64 %new_node67, i64 %key68)
  %raw.value70 = extractvalue { i8, ptr, i8 } %calltmp69, 0
  %new_node71 = load i64, ptr %new_node, align 4
  %addtmp72 = add i64 %new_node71, 8
  %val73 = load i64, ptr %val.addr, align 4
  %calltmp74 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp72, i64 %val73)
  %raw.value75 = extractvalue { i8, ptr, i8 } %calltmp74, 0
  %new_node76 = load i64, ptr %new_node, align 4
  %addtmp77 = add i64 %new_node76, 16
  %head78 = load i64, ptr %head, align 4
  %calltmp79 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp77, i64 %head78)
  %raw.value80 = extractvalue { i8, ptr, i8 } %calltmp79, 0
  %bucket_addr81 = load i64, ptr %bucket_addr, align 4
  %new_node82 = load i64, ptr %new_node, align 4
  %calltmp83 = call { i8, ptr, i8 } @mem.store64(i64 %bucket_addr81, i64 %new_node82)
  %raw.value84 = extractvalue { i8, ptr, i8 } %calltmp83, 0
  %map85 = load i64, ptr %map.addr, align 4
  %addtmp86 = add i64 %map85, 8
  %size87 = load i64, ptr %size, align 4
  %addtmp88 = add i64 %size87, 1
  %calltmp89 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp86, i64 %addtmp88)
  %raw.value90 = extractvalue { i8, ptr, i8 } %calltmp89, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr { i8, ptr, i8 } @mapc.mapc_get(i64 %map, i64 %key, i64 %out_val_ptr) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %out_val_ptr.addr = alloca i64, align 8
  store i64 %out_val_ptr, ptr %out_val_ptr.addr, align 4
  %capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %capacity, align 4
  %buckets = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %buckets, align 4
  %hash = alloca i64, align 8
  %key5 = load i64, ptr %key.addr, align 4
  %calltmp6 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key5)
  %raw.value7 = extractvalue { i64, ptr, i8 } %calltmp6, 0
  store i64 %raw.value7, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash8 = load i64, ptr %hash, align 4
  %capacity9 = load i64, ptr %capacity, align 4
  %mod.iszero = icmp eq i64 %capacity9, 0
  %modtmp = srem i64 %hash8, %capacity9
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx10 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx10, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %idx11 = load i64, ptr %idx, align 4
  %capacity12 = load i64, ptr %capacity, align 4
  %addtmp13 = add i64 %idx11, %capacity12
  store i64 %addtmp13, ptr %idx, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %bucket_addr = alloca i64, align 8
  %buckets14 = load i64, ptr %buckets, align 4
  %idx15 = load i64, ptr %idx, align 4
  %multmp = mul i64 %idx15, 8
  %addtmp16 = add i64 %buckets14, %multmp
  store i64 %addtmp16, ptr %bucket_addr, align 4
  %curr = alloca i64, align 8
  %bucket_addr17 = load i64, ptr %bucket_addr, align 4
  %calltmp18 = call { i64, ptr, i8 } @mem.load64(i64 %bucket_addr17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  store i64 %raw.value19, ptr %curr, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont41, %ifcont
  %curr20 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr20, 0
  %whilecond21 = icmp ne i1 %netmp, false
  br i1 %whilecond21, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ckey = alloca i64, align 8
  %curr22 = load i64, ptr %curr, align 4
  %calltmp23 = call { i64, ptr, i8 } @mem.load64(i64 %curr22)
  %raw.value24 = extractvalue { i64, ptr, i8 } %calltmp23, 0
  store i64 %raw.value24, ptr %ckey, align 4
  %ckey25 = load i64, ptr %ckey, align 4
  %key26 = load i64, ptr %key.addr, align 4
  %eqtmp = icmp eq i64 %ckey25, %key26
  %ifcond27 = icmp ne i1 %eqtmp, false
  br i1 %ifcond27, label %then28, label %ifcont41

then28:                                           ; preds = %whilebody
  %out_val_ptr29 = load i64, ptr %out_val_ptr.addr, align 4
  %netmp30 = icmp ne i64 %out_val_ptr29, 0
  %ifcond31 = icmp ne i1 %netmp30, false
  br i1 %ifcond31, label %then32, label %ifcont40

then32:                                           ; preds = %then28
  %out_val_ptr33 = load i64, ptr %out_val_ptr.addr, align 4
  %curr34 = load i64, ptr %curr, align 4
  %addtmp35 = add i64 %curr34, 8
  %calltmp36 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  %calltmp38 = call { i8, ptr, i8 } @mem.store64(i64 %out_val_ptr33, i64 %raw.value37)
  %raw.value39 = extractvalue { i8, ptr, i8 } %calltmp38, 0
  br label %ifcont40

ifcont40:                                         ; preds = %then32, %then28
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont41:                                         ; preds = %whilebody
  %curr42 = load i64, ptr %curr, align 4
  %addtmp43 = add i64 %curr42, 16
  %calltmp44 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp43)
  %raw.value45 = extractvalue { i64, ptr, i8 } %calltmp44, 0
  store i64 %raw.value45, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @mapc.mapc_remove(i64 %map, i64 %key) {
entry:
  %map.addr = alloca i64, align 8
  store i64 %map, ptr %map.addr, align 4
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 4
  %capacity = alloca i64, align 8
  %map1 = load i64, ptr %map.addr, align 4
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %map1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %capacity, align 4
  %size = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 8
  %calltmp3 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %size, align 4
  %buckets = alloca i64, align 8
  %map5 = load i64, ptr %map.addr, align 4
  %addtmp6 = add i64 %map5, 16
  %calltmp7 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  store i64 %raw.value8, ptr %buckets, align 4
  %allocator = alloca i64, align 8
  %map9 = load i64, ptr %map.addr, align 4
  %addtmp10 = add i64 %map9, 24
  %calltmp11 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp10)
  %raw.value12 = extractvalue { i64, ptr, i8 } %calltmp11, 0
  store i64 %raw.value12, ptr %allocator, align 4
  %hash = alloca i64, align 8
  %key13 = load i64, ptr %key.addr, align 4
  %calltmp14 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %key13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  store i64 %raw.value15, ptr %hash, align 4
  %idx = alloca i64, align 8
  %hash16 = load i64, ptr %hash, align 4
  %capacity17 = load i64, ptr %capacity, align 4
  %mod.iszero = icmp eq i64 %capacity17, 0
  %modtmp = srem i64 %hash16, %capacity17
  %safe.modtmp = select i1 %mod.iszero, i64 9223372036854775807, i64 %modtmp
  store i64 %safe.modtmp, ptr %idx, align 4
  %idx18 = load i64, ptr %idx, align 4
  %lttmp = icmp slt i64 %idx18, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %idx19 = load i64, ptr %idx, align 4
  %capacity20 = load i64, ptr %capacity, align 4
  %addtmp21 = add i64 %idx19, %capacity20
  store i64 %addtmp21, ptr %idx, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %bucket_addr = alloca i64, align 8
  %buckets22 = load i64, ptr %buckets, align 4
  %idx23 = load i64, ptr %idx, align 4
  %multmp = mul i64 %idx23, 8
  %addtmp24 = add i64 %buckets22, %multmp
  store i64 %addtmp24, ptr %bucket_addr, align 4
  %curr = alloca i64, align 8
  %bucket_addr25 = load i64, ptr %bucket_addr, align 4
  %calltmp26 = call { i64, ptr, i8 } @mem.load64(i64 %bucket_addr25)
  %raw.value27 = extractvalue { i64, ptr, i8 } %calltmp26, 0
  store i64 %raw.value27, ptr %curr, align 4
  %prev = alloca i64, align 8
  store i64 0, ptr %prev, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont64, %ifcont
  %curr28 = load i64, ptr %curr, align 4
  %netmp = icmp ne i64 %curr28, 0
  %whilecond29 = icmp ne i1 %netmp, false
  br i1 %whilecond29, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ckey = alloca i64, align 8
  %curr30 = load i64, ptr %curr, align 4
  %calltmp31 = call { i64, ptr, i8 } @mem.load64(i64 %curr30)
  %raw.value32 = extractvalue { i64, ptr, i8 } %calltmp31, 0
  store i64 %raw.value32, ptr %ckey, align 4
  %ckey33 = load i64, ptr %ckey, align 4
  %key34 = load i64, ptr %key.addr, align 4
  %eqtmp = icmp eq i64 %ckey33, %key34
  %ifcond35 = icmp ne i1 %eqtmp, false
  br i1 %ifcond35, label %then36, label %ifcont64

then36:                                           ; preds = %whilebody
  %next = alloca i64, align 8
  %curr37 = load i64, ptr %curr, align 4
  %addtmp38 = add i64 %curr37, 16
  %calltmp39 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp38)
  %raw.value40 = extractvalue { i64, ptr, i8 } %calltmp39, 0
  store i64 %raw.value40, ptr %next, align 4
  %prev41 = load i64, ptr %prev, align 4
  %eqtmp42 = icmp eq i64 %prev41, 0
  %ifcond43 = icmp ne i1 %eqtmp42, false
  br i1 %ifcond43, label %then44, label %else

then44:                                           ; preds = %then36
  %bucket_addr45 = load i64, ptr %bucket_addr, align 4
  %next46 = load i64, ptr %next, align 4
  %calltmp47 = call { i8, ptr, i8 } @mem.store64(i64 %bucket_addr45, i64 %next46)
  %raw.value48 = extractvalue { i8, ptr, i8 } %calltmp47, 0
  br label %ifcont54

else:                                             ; preds = %then36
  %prev49 = load i64, ptr %prev, align 4
  %addtmp50 = add i64 %prev49, 16
  %next51 = load i64, ptr %next, align 4
  %calltmp52 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp50, i64 %next51)
  %raw.value53 = extractvalue { i8, ptr, i8 } %calltmp52, 0
  br label %ifcont54

ifcont54:                                         ; preds = %else, %then44
  %allocator55 = load i64, ptr %allocator, align 4
  %curr56 = load i64, ptr %curr, align 4
  %calltmp57 = call { i8, ptr, i8 } @allocator.MapAllocator_free(i64 %allocator55, i64 %curr56)
  %raw.value58 = extractvalue { i8, ptr, i8 } %calltmp57, 0
  %map59 = load i64, ptr %map.addr, align 4
  %addtmp60 = add i64 %map59, 8
  %size61 = load i64, ptr %size, align 4
  %subtmp = sub i64 %size61, 1
  %calltmp62 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp60, i64 %subtmp)
  %raw.value63 = extractvalue { i8, ptr, i8 } %calltmp62, 0
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }

ifcont64:                                         ; preds = %whilebody
  %curr65 = load i64, ptr %curr, align 4
  store i64 %curr65, ptr %prev, align 4
  %curr66 = load i64, ptr %curr, align 4
  %addtmp67 = add i64 %curr66, 16
  %calltmp68 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp67)
  %raw.value69 = extractvalue { i64, ptr, i8 } %calltmp68, 0
  store i64 %raw.value69, ptr %curr, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i8, ptr, i8 } zeroinitializer
}

define linkonce_odr { i8, ptr, i8 } @mapc.mapc_destroy(i64 %map) {
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
  %buckets = alloca i64, align 8
  %map2 = load i64, ptr %map.addr, align 4
  %addtmp = add i64 %map2, 16
  %calltmp = call { i64, ptr, i8 } @mem.load64(i64 %addtmp)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %buckets, align 4
  %buckets3 = load i64, ptr %buckets, align 4
  %netmp = icmp ne i64 %buckets3, 0
  %ifcond4 = icmp ne i1 %netmp, false
  br i1 %ifcond4, label %then5, label %ifcont7

then5:                                            ; preds = %ifcont
  %buckets6 = load i64, ptr %buckets, align 4
  %cast.inttoptr = inttoptr i64 %buckets6 to ptr
  call void @npk_free(ptr %cast.inttoptr)
  br label %ifcont7

ifcont7:                                          ; preds = %then5, %ifcont
  %allocator = alloca i64, align 8
  %map8 = load i64, ptr %map.addr, align 4
  %addtmp9 = add i64 %map8, 24
  %calltmp10 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %allocator, align 4
  %allocator12 = load i64, ptr %allocator, align 4
  %netmp13 = icmp ne i64 %allocator12, 0
  %ifcond14 = icmp ne i1 %netmp13, false
  br i1 %ifcond14, label %then15, label %ifcont19

then15:                                           ; preds = %ifcont7
  %allocator16 = load i64, ptr %allocator, align 4
  %calltmp17 = call { i8, ptr, i8 } @allocator.MapAllocator_destroy(i64 %allocator16)
  %raw.value18 = extractvalue { i8, ptr, i8 } %calltmp17, 0
  br label %ifcont19

ifcont19:                                         ; preds = %then15, %ifcont7
  %map20 = load i64, ptr %map.addr, align 4
  %cast.inttoptr21 = inttoptr i64 %map20 to ptr
  call void @npk_free(ptr %cast.inttoptr21)
  ret { i8, ptr, i8 } { i8 1, ptr null, i8 0 }
}

define linkonce_odr i32 @__mapc_init() {
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
  %andtmp = and i64 %cast.ptrtoint13, 281474976710655
  store i64 %andtmp, ptr %h_addr, align 4
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
  %dummy_flag = alloca i64, align 8
  store i64 0, ptr %dummy_flag, align 4
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
  %flag_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 8)
  store ptr %wild_ptr, ptr %flag_ptr, align 8
  %flag_addr = alloca i64, align 8
  %flag_ptr5 = load ptr, ptr %flag_ptr, align 8
  %flag_ptr6 = load ptr, ptr %flag_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %flag_ptr6 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %flag_addr, align 4
  %flag_addr7 = load i64, ptr %flag_addr, align 4
  %calltmp8 = call { i8, ptr, i8 } @mem.store8(i64 %flag_addr7, i8 0)
  %raw.value9 = extractvalue { i8, ptr, i8 } %calltmp8, 0
  %new_root = alloca i64, align 8
  %root10 = load i64, ptr %root, align 4
  %key11 = load i64, ptr %key.addr, align 4
  %allocator12 = load i64, ptr %allocator, align 4
  %flag_addr13 = load i64, ptr %flag_addr, align 4
  %calltmp14 = call { i64, ptr, i8 } @treemap._treemap_remove_node(i64 %root10, i64 %key11, i64 %allocator12, i64 %flag_addr13)
  %raw.value15 = extractvalue { i64, ptr, i8 } %calltmp14, 0
  store i64 %raw.value15, ptr %new_root, align 4
  %map16 = load i64, ptr %map.addr, align 4
  %new_root17 = load i64, ptr %new_root, align 4
  %calltmp18 = call { i8, ptr, i8 } @mem.store64(i64 %map16, i64 %new_root17)
  %raw.value19 = extractvalue { i8, ptr, i8 } %calltmp18, 0
  %deleted = alloca i8, align 1
  %flag_addr20 = load i64, ptr %flag_addr, align 4
  %calltmp21 = call { i8, ptr, i8 } @mem.load8(i64 %flag_addr20)
  %raw.value22 = extractvalue { i8, ptr, i8 } %calltmp21, 0
  store i8 %raw.value22, ptr %deleted, align 1
  %flag_ptr23 = load ptr, ptr %flag_ptr, align 8
  call void @npk_free(ptr %flag_ptr23)
  %deleted24 = load i8, ptr %deleted, align 1
  %eqtmp = icmp eq i8 %deleted24, 1
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %s = alloca i64, align 8
  %map25 = load i64, ptr %map.addr, align 4
  %addtmp26 = add i64 %map25, 8
  %calltmp27 = call { i64, ptr, i8 } @mem.load64(i64 %addtmp26)
  %raw.value28 = extractvalue { i64, ptr, i8 } %calltmp27, 0
  store i64 %raw.value28, ptr %s, align 4
  %map29 = load i64, ptr %map.addr, align 4
  %addtmp30 = add i64 %map29, 8
  %s31 = load i64, ptr %s, align 4
  %subtmp = sub i64 %s31, 1
  %calltmp32 = call { i8, ptr, i8 } @mem.store64(i64 %addtmp30, i64 %subtmp)
  %raw.value33 = extractvalue { i8, ptr, i8 } %calltmp32, 0
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
  call void @proc_exit(i32 1) #0
  unreachable
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %num_items = alloca i64, align 8
  store i64 100000, ptr %num_items, align 4
  %intmap = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @intmap.create(i64 16)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %intmap, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %i1 = load i64, ptr %i, align 4
  %num_items2 = load i64, ptr %num_items, align 4
  %lttmp = icmp slt i64 %i1, %num_items2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %rand_key = alloca i64, align 8
  %i4 = load i64, ptr %i, align 4
  %calltmp5 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %i4)
  %raw.value6 = extractvalue { i64, ptr, i8 } %calltmp5, 0
  store i64 %raw.value6, ptr %rand_key, align 4
  %intmap7 = load i64, ptr %intmap, align 4
  %rand_key8 = load i64, ptr %rand_key, align 4
  %i9 = load i64, ptr %i, align 4
  %multmp = mul i64 %i9, 10
  %calltmp10 = call { i8, ptr, i8 } @intmap.put(i64 %intmap7, i64 %rand_key8, i64 %multmp)
  %raw.value11 = extractvalue { i8, ptr, i8 } %calltmp10, 0
  %i12 = load i64, ptr %i, align 4
  %addtmp = add i64 %i12, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %mapc = alloca i64, align 8
  %calltmp13 = call { i64, ptr, i8 } @mapc.mapc_create(i64 16)
  %raw.value14 = extractvalue { i64, ptr, i8 } %calltmp13, 0
  store i64 %raw.value14, ptr %mapc, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond15

whilecond15:                                      ; preds = %whilebody20, %afterwhile
  %i16 = load i64, ptr %i, align 4
  %num_items17 = load i64, ptr %num_items, align 4
  %lttmp18 = icmp slt i64 %i16, %num_items17
  %whilecond19 = icmp ne i1 %lttmp18, false
  br i1 %whilecond19, label %whilebody20, label %afterwhile33

whilebody20:                                      ; preds = %whilecond15
  %rand_key21 = alloca i64, align 8
  %i22 = load i64, ptr %i, align 4
  %calltmp23 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %i22)
  %raw.value24 = extractvalue { i64, ptr, i8 } %calltmp23, 0
  store i64 %raw.value24, ptr %rand_key21, align 4
  %mapc25 = load i64, ptr %mapc, align 4
  %rand_key26 = load i64, ptr %rand_key21, align 4
  %i27 = load i64, ptr %i, align 4
  %multmp28 = mul i64 %i27, 10
  %calltmp29 = call { i8, ptr, i8 } @mapc.mapc_put(i64 %mapc25, i64 %rand_key26, i64 %multmp28)
  %raw.value30 = extractvalue { i8, ptr, i8 } %calltmp29, 0
  %i31 = load i64, ptr %i, align 4
  %addtmp32 = add i64 %i31, 1
  store i64 %addtmp32, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond15

afterwhile33:                                     ; preds = %whilecond15
  %treemap = alloca i64, align 8
  %calltmp34 = call { i64, ptr, i8 } @treemap.treemap_create()
  %raw.value35 = extractvalue { i64, ptr, i8 } %calltmp34, 0
  store i64 %raw.value35, ptr %treemap, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond36

whilecond36:                                      ; preds = %whilebody41, %afterwhile33
  %i37 = load i64, ptr %i, align 4
  %num_items38 = load i64, ptr %num_items, align 4
  %lttmp39 = icmp slt i64 %i37, %num_items38
  %whilecond40 = icmp ne i1 %lttmp39, false
  br i1 %whilecond40, label %whilebody41, label %afterwhile54

whilebody41:                                      ; preds = %whilecond36
  %rand_key42 = alloca i64, align 8
  %i43 = load i64, ptr %i, align 4
  %calltmp44 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %i43)
  %raw.value45 = extractvalue { i64, ptr, i8 } %calltmp44, 0
  store i64 %raw.value45, ptr %rand_key42, align 4
  %treemap46 = load i64, ptr %treemap, align 4
  %rand_key47 = load i64, ptr %rand_key42, align 4
  %i48 = load i64, ptr %i, align 4
  %multmp49 = mul i64 %i48, 10
  %calltmp50 = call { i8, ptr, i8 } @treemap.treemap_put(i64 %treemap46, i64 %rand_key47, i64 %multmp49)
  %raw.value51 = extractvalue { i8, ptr, i8 } %calltmp50, 0
  %i52 = load i64, ptr %i, align 4
  %addtmp53 = add i64 %i52, 1
  store i64 %addtmp53, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond36

afterwhile54:                                     ; preds = %whilecond36
  %out_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 8)
  store ptr %wild_ptr, ptr %out_ptr, align 8
  %out_addr = alloca i64, align 8
  %out_ptr55 = load ptr, ptr %out_ptr, align 8
  %out_ptr56 = load ptr, ptr %out_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %out_ptr56 to i64
  %andtmp = and i64 %cast.ptrtoint, 281474976710655
  store i64 %andtmp, ptr %out_addr, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond57

whilecond57:                                      ; preds = %whilebody62, %afterwhile54
  %i58 = load i64, ptr %i, align 4
  %num_items59 = load i64, ptr %num_items, align 4
  %lttmp60 = icmp slt i64 %i58, %num_items59
  %whilecond61 = icmp ne i1 %lttmp60, false
  br i1 %whilecond61, label %whilebody62, label %afterwhile74

whilebody62:                                      ; preds = %whilecond57
  %rand_key63 = alloca i64, align 8
  %i64 = load i64, ptr %i, align 4
  %calltmp65 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %i64)
  %raw.value66 = extractvalue { i64, ptr, i8 } %calltmp65, 0
  store i64 %raw.value66, ptr %rand_key63, align 4
  %intmap67 = load i64, ptr %intmap, align 4
  %rand_key68 = load i64, ptr %rand_key63, align 4
  %out_addr69 = load i64, ptr %out_addr, align 4
  %calltmp70 = call { i8, ptr, i8 } @intmap.get(i64 %intmap67, i64 %rand_key68, i64 %out_addr69)
  %raw.value71 = extractvalue { i8, ptr, i8 } %calltmp70, 0
  %i72 = load i64, ptr %i, align 4
  %addtmp73 = add i64 %i72, 1
  store i64 %addtmp73, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond57

afterwhile74:                                     ; preds = %whilecond57
  store i64 0, ptr %i, align 4
  br label %whilecond75

whilecond75:                                      ; preds = %whilebody80, %afterwhile74
  %i76 = load i64, ptr %i, align 4
  %num_items77 = load i64, ptr %num_items, align 4
  %lttmp78 = icmp slt i64 %i76, %num_items77
  %whilecond79 = icmp ne i1 %lttmp78, false
  br i1 %whilecond79, label %whilebody80, label %afterwhile92

whilebody80:                                      ; preds = %whilecond75
  %rand_key81 = alloca i64, align 8
  %i82 = load i64, ptr %i, align 4
  %calltmp83 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %i82)
  %raw.value84 = extractvalue { i64, ptr, i8 } %calltmp83, 0
  store i64 %raw.value84, ptr %rand_key81, align 4
  %mapc85 = load i64, ptr %mapc, align 4
  %rand_key86 = load i64, ptr %rand_key81, align 4
  %out_addr87 = load i64, ptr %out_addr, align 4
  %calltmp88 = call { i8, ptr, i8 } @mapc.mapc_get(i64 %mapc85, i64 %rand_key86, i64 %out_addr87)
  %raw.value89 = extractvalue { i8, ptr, i8 } %calltmp88, 0
  %i90 = load i64, ptr %i, align 4
  %addtmp91 = add i64 %i90, 1
  store i64 %addtmp91, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond75

afterwhile92:                                     ; preds = %whilecond75
  store i64 0, ptr %i, align 4
  br label %whilecond93

whilecond93:                                      ; preds = %whilebody98, %afterwhile92
  %i94 = load i64, ptr %i, align 4
  %num_items95 = load i64, ptr %num_items, align 4
  %lttmp96 = icmp slt i64 %i94, %num_items95
  %whilecond97 = icmp ne i1 %lttmp96, false
  br i1 %whilecond97, label %whilebody98, label %afterwhile110

whilebody98:                                      ; preds = %whilecond93
  %rand_key99 = alloca i64, align 8
  %i100 = load i64, ptr %i, align 4
  %calltmp101 = call { i64, ptr, i8 } @intmap.hash_int64(i64 %i100)
  %raw.value102 = extractvalue { i64, ptr, i8 } %calltmp101, 0
  store i64 %raw.value102, ptr %rand_key99, align 4
  %treemap103 = load i64, ptr %treemap, align 4
  %rand_key104 = load i64, ptr %rand_key99, align 4
  %out_addr105 = load i64, ptr %out_addr, align 4
  %calltmp106 = call { i8, ptr, i8 } @treemap.treemap_get(i64 %treemap103, i64 %rand_key104, i64 %out_addr105)
  %raw.value107 = extractvalue { i8, ptr, i8 } %calltmp106, 0
  %i108 = load i64, ptr %i, align 4
  %addtmp109 = add i64 %i108, 1
  store i64 %addtmp109, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond93

afterwhile110:                                    ; preds = %whilecond93
  %intmap111 = load i64, ptr %intmap, align 4
  %calltmp112 = call { i8, ptr, i8 } @intmap.destroy(i64 %intmap111)
  %raw.value113 = extractvalue { i8, ptr, i8 } %calltmp112, 0
  %mapc114 = load i64, ptr %mapc, align 4
  %calltmp115 = call { i8, ptr, i8 } @mapc.mapc_destroy(i64 %mapc114)
  %raw.value116 = extractvalue { i8, ptr, i8 } %calltmp115, 0
  call void @proc_exit(i32 0) #0
  unreachable
}

; Function Attrs: noreturn
declare void @proc_exit(i32) #0

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__benchmark_nmaps_init() {
entry:
  ret i32 0
}

attributes #0 = { noreturn }
