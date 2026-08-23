package com.android.p003dx.p004cf.direct;

import com.android.p003dx.p004cf.attrib.RawAttribute;
import com.android.p003dx.p004cf.iface.Attribute;
import com.android.p003dx.p004cf.iface.ParseException;
import com.android.p003dx.p004cf.iface.ParseObserver;
import com.android.p003dx.rop.cst.ConstantPool;
import com.android.p003dx.rop.cst.CstString;
import com.android.p003dx.util.ByteArray;
import com.android.p003dx.util.Hex;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public class AttributeFactory {
    public static final int CTX_CLASS = 0;
    public static final int CTX_CODE = 3;
    public static final int CTX_COUNT = 4;
    public static final int CTX_FIELD = 1;
    public static final int CTX_METHOD = 2;

    public final Attribute parse(DirectClassFile directClassFile, int i, int i2, ParseObserver parseObserver) {
        String str;
        if (directClassFile == null) {
            throw new NullPointerException("cf == null");
        }
        if (i < 0 || i >= 4) {
            throw new IllegalArgumentException("bad context");
        }
        CstString cstString = null;
        try {
            ByteArray bytes = directClassFile.getBytes();
            ConstantPool constantPool = directClassFile.getConstantPool();
            int unsignedShort = bytes.getUnsignedShort(i2);
            int i3 = i2 + 2;
            int i4 = bytes.getInt(i3);
            CstString cstString2 = (CstString) constantPool.get(unsignedShort);
            if (parseObserver != null) {
                try {
                    parseObserver.parsed(bytes, i2, 2, "name: " + cstString2.toHuman());
                    parseObserver.parsed(bytes, i3, 4, "length: " + Hex.m214u4(i4));
                } catch (ParseException e) {
                    e = e;
                    cstString = cstString2;
                    StringBuilder sb = new StringBuilder();
                    sb.append("...while parsing ");
                    if (cstString != null) {
                        str = cstString.toHuman() + " ";
                    } else {
                        str = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    sb.append(str);
                    sb.append("attribute at offset ");
                    sb.append(Hex.m214u4(i2));
                    e.addContext(sb.toString());
                    throw e;
                }
            }
            return parse0(directClassFile, i, cstString2.getString(), i2 + 6, i4, parseObserver);
        } catch (ParseException e2) {
            e = e2;
        }
    }

    protected Attribute parse0(DirectClassFile directClassFile, int i, String str, int i2, int i3, ParseObserver parseObserver) {
        ByteArray bytes = directClassFile.getBytes();
        RawAttribute rawAttribute = new RawAttribute(str, bytes, i2, i3, directClassFile.getConstantPool());
        if (parseObserver != null) {
            parseObserver.parsed(bytes, i2, i3, "attribute data");
        }
        return rawAttribute;
    }
}
