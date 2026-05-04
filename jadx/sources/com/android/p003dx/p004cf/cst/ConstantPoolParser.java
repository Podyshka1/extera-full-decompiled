package com.android.p003dx.p004cf.cst;

import com.android.p003dx.p004cf.iface.ParseException;
import com.android.p003dx.p004cf.iface.ParseObserver;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.CstDouble;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstFloat;
import com.android.p003dx.rop.cst.CstInteger;
import com.android.p003dx.rop.cst.CstInterfaceMethodRef;
import com.android.p003dx.rop.cst.CstInvokeDynamic;
import com.android.p003dx.rop.cst.CstLong;
import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstNat;
import com.android.p003dx.rop.cst.CstProtoRef;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.cst.StdConstantPool;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.util.ByteArray;
import com.android.p003dx.util.Hex;
import java.util.BitSet;

/* JADX INFO: loaded from: classes4.dex */
public final class ConstantPoolParser {
    private final ByteArray bytes;
    private int endOffset;
    private ParseObserver observer;
    private final int[] offsets;
    private final StdConstantPool pool;

    public ConstantPoolParser(ByteArray byteArray) {
        int unsignedShort = byteArray.getUnsignedShort(8);
        this.bytes = byteArray;
        this.pool = new StdConstantPool(unsignedShort);
        this.offsets = new int[unsignedShort];
        this.endOffset = -1;
    }

    public void setObserver(ParseObserver parseObserver) {
        this.observer = parseObserver;
    }

    public int getEndOffset() {
        parseIfNecessary();
        return this.endOffset;
    }

    public StdConstantPool getPool() {
        parseIfNecessary();
        return this.pool;
    }

    private void parseIfNecessary() {
        if (this.endOffset < 0) {
            parse();
        }
    }

    private void parse() {
        determineOffsets();
        ParseObserver parseObserver = this.observer;
        if (parseObserver != null) {
            parseObserver.parsed(this.bytes, 8, 2, "constant_pool_count: " + Hex.m212u2(this.offsets.length));
            this.observer.parsed(this.bytes, 10, 0, "\nconstant_pool:");
            this.observer.changeIndent(1);
        }
        BitSet bitSet = new BitSet(this.offsets.length);
        int i = 1;
        while (true) {
            int[] iArr = this.offsets;
            if (i >= iArr.length) {
                break;
            }
            if (iArr[i] != 0 && this.pool.getOrNull(i) == null) {
                parse0(i, bitSet);
            }
            i++;
        }
        if (this.observer != null) {
            for (int i2 = 1; i2 < this.offsets.length; i2++) {
                Constant orNull = this.pool.getOrNull(i2);
                if (orNull != null) {
                    int i3 = this.offsets[i2];
                    int i4 = this.endOffset;
                    int i5 = i2 + 1;
                    while (true) {
                        int[] iArr2 = this.offsets;
                        if (i5 >= iArr2.length) {
                            break;
                        }
                        int i6 = iArr2[i5];
                        if (i6 != 0) {
                            i4 = i6;
                            break;
                        }
                        i5++;
                    }
                    this.observer.parsed(this.bytes, i3, i4 - i3, bitSet.get(i2) ? Hex.m212u2(i2) + ": utf8{\"" + orNull.toHuman() + "\"}" : Hex.m212u2(i2) + ": " + orNull.toString());
                }
            }
            this.observer.changeIndent(-1);
            this.observer.parsed(this.bytes, this.endOffset, 0, "end constant_pool");
        }
    }

    private void determineOffsets() {
        int i;
        int unsignedShort = 10;
        int i2 = 1;
        while (true) {
            int[] iArr = this.offsets;
            if (i2 < iArr.length) {
                iArr[i2] = unsignedShort;
                int unsignedByte = this.bytes.getUnsignedByte(unsignedShort);
                switch (unsignedByte) {
                    case 1:
                        unsignedShort += this.bytes.getUnsignedShort(unsignedShort + 1) + 3;
                        i = 1;
                        i2 += i;
                        break;
                    case 2:
                    case 13:
                    case 14:
                    case 17:
                    default:
                        throw new ParseException("unknown tag byte: " + Hex.m211u1(unsignedByte));
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 18:
                        try {
                            unsignedShort += 5;
                            i = 1;
                            i2 += i;
                        } catch (ParseException e) {
                            e.addContext("...while preparsing cst " + Hex.m212u2(i2) + " at offset " + Hex.m214u4(unsignedShort));
                            throw e;
                        }
                        break;
                    case 5:
                    case 6:
                        unsignedShort += 9;
                        i = 2;
                        i2 += i;
                        break;
                    case 7:
                    case 8:
                    case 16:
                        unsignedShort += 3;
                        i = 1;
                        i2 += i;
                        break;
                    case 15:
                        unsignedShort += 4;
                        i = 1;
                        i2 += i;
                        break;
                }
            } else {
                this.endOffset = unsignedShort;
                return;
            }
        }
    }

    private Constant parse0(int i, BitSet bitSet) {
        Constant utf8;
        Constant constantMake;
        Constant cstFieldRef;
        Constant constant;
        Constant orNull = this.pool.getOrNull(i);
        if (orNull != null) {
            return orNull;
        }
        int i2 = this.offsets[i];
        try {
            int unsignedByte = this.bytes.getUnsignedByte(i2);
            switch (unsignedByte) {
                case 1:
                    utf8 = parseUtf8(i2);
                    bitSet.set(i);
                    constantMake = utf8;
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 2:
                case 13:
                case 14:
                case 17:
                default:
                    throw new ParseException("unknown tag byte: " + Hex.m211u1(unsignedByte));
                case 3:
                    constantMake = CstInteger.make(this.bytes.getInt(i2 + 1));
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 4:
                    constantMake = CstFloat.make(this.bytes.getInt(i2 + 1));
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 5:
                    constantMake = CstLong.make(this.bytes.getLong(i2 + 1));
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 6:
                    constantMake = CstDouble.make(this.bytes.getLong(i2 + 1));
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 7:
                    utf8 = new CstType(Type.internClassName(((CstString) parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet)).getString()));
                    constantMake = utf8;
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 8:
                    constantMake = parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet);
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 9:
                    cstFieldRef = new CstFieldRef((CstType) parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i2 + 3), bitSet));
                    constantMake = cstFieldRef;
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 10:
                    cstFieldRef = new CstMethodRef((CstType) parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i2 + 3), bitSet));
                    constantMake = cstFieldRef;
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 11:
                    cstFieldRef = new CstInterfaceMethodRef((CstType) parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet), (CstNat) parse0(this.bytes.getUnsignedShort(i2 + 3), bitSet));
                    constantMake = cstFieldRef;
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 12:
                    cstFieldRef = new CstNat((CstString) parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet), (CstString) parse0(this.bytes.getUnsignedShort(i2 + 3), bitSet));
                    constantMake = cstFieldRef;
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 15:
                    int unsignedByte2 = this.bytes.getUnsignedByte(i2 + 1);
                    int unsignedShort = this.bytes.getUnsignedShort(i2 + 2);
                    switch (unsignedByte2) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                            constant = (CstFieldRef) parse0(unsignedShort, bitSet);
                            break;
                        case 5:
                        case 8:
                            constant = (CstMethodRef) parse0(unsignedShort, bitSet);
                            break;
                        case 6:
                        case 7:
                            constant = parse0(unsignedShort, bitSet);
                            if (!(constant instanceof CstMethodRef) && !(constant instanceof CstInterfaceMethodRef)) {
                                throw new ParseException("Unsupported ref constant type for MethodHandle " + constant.getClass());
                            }
                            break;
                        case 9:
                            constant = (CstInterfaceMethodRef) parse0(unsignedShort, bitSet);
                            break;
                        default:
                            throw new ParseException("Unsupported MethodHandle kind: " + unsignedByte2);
                    }
                    constantMake = CstMethodHandle.make(getMethodHandleTypeForKind(unsignedByte2), constant);
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 16:
                    constantMake = CstProtoRef.make((CstString) parse0(this.bytes.getUnsignedShort(i2 + 1), bitSet));
                    this.pool.set(i, constantMake);
                    return constantMake;
                case 18:
                    constantMake = CstInvokeDynamic.make(this.bytes.getUnsignedShort(i2 + 1), (CstNat) parse0(this.bytes.getUnsignedShort(i2 + 3), bitSet));
                    this.pool.set(i, constantMake);
                    return constantMake;
            }
        } catch (ParseException e) {
            e.addContext("...while parsing cst " + Hex.m212u2(i) + " at offset " + Hex.m214u4(i2));
            throw e;
        } catch (RuntimeException e2) {
            ParseException parseException = new ParseException(e2);
            parseException.addContext("...while parsing cst " + Hex.m212u2(i) + " at offset " + Hex.m214u4(i2));
            throw parseException;
        }
    }

    private CstString parseUtf8(int i) {
        int unsignedShort = this.bytes.getUnsignedShort(i + 1);
        int i2 = i + 3;
        try {
            return new CstString(this.bytes.slice(i2, unsignedShort + i2));
        } catch (IllegalArgumentException e) {
            throw new ParseException(e);
        }
    }

    private static int getMethodHandleTypeForKind(int i) {
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 0;
            case 5:
                return 5;
            case 6:
                return 4;
            case 7:
                return 7;
            case 8:
                return 6;
            case 9:
                return 8;
            default:
                throw new IllegalArgumentException("invalid kind: " + i);
        }
    }
}
