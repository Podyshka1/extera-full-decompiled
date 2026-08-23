package com.android.p003dx.rop.code;

import com.android.p003dx.util.Hex;

/* JADX INFO: loaded from: classes4.dex */
public final class AccessFlags {
    public static final int ACC_ABSTRACT = 1024;
    public static final int ACC_ANNOTATION = 8192;
    public static final int ACC_BRIDGE = 64;
    public static final int ACC_CONSTRUCTOR = 65536;
    public static final int ACC_DECLARED_SYNCHRONIZED = 131072;
    public static final int ACC_ENUM = 16384;
    public static final int ACC_FINAL = 16;
    public static final int ACC_INTERFACE = 512;
    public static final int ACC_NATIVE = 256;
    public static final int ACC_PRIVATE = 2;
    public static final int ACC_PROTECTED = 4;
    public static final int ACC_PUBLIC = 1;
    public static final int ACC_STATIC = 8;
    public static final int ACC_STRICT = 2048;
    public static final int ACC_SUPER = 32;
    public static final int ACC_SYNCHRONIZED = 32;
    public static final int ACC_SYNTHETIC = 4096;
    public static final int ACC_TRANSIENT = 128;
    public static final int ACC_VARARGS = 128;
    public static final int ACC_VOLATILE = 64;
    public static final int CLASS_FLAGS = 30257;
    private static final int CONV_CLASS = 1;
    private static final int CONV_FIELD = 2;
    private static final int CONV_METHOD = 3;
    public static final int FIELD_FLAGS = 20703;
    public static final int INNER_CLASS_FLAGS = 30239;
    public static final int METHOD_FLAGS = 204287;

    public static boolean isAbstract(int i) {
        return (i & 1024) != 0;
    }

    public static boolean isAnnotation(int i) {
        return (i & 8192) != 0;
    }

    public static boolean isConstructor(int i) {
        return (i & 65536) != 0;
    }

    public static boolean isDeclaredSynchronized(int i) {
        return (i & 131072) != 0;
    }

    public static boolean isEnum(int i) {
        return (i & 16384) != 0;
    }

    public static boolean isInterface(int i) {
        return (i & 512) != 0;
    }

    public static boolean isNative(int i) {
        return (i & 256) != 0;
    }

    public static boolean isPrivate(int i) {
        return (i & 2) != 0;
    }

    public static boolean isProtected(int i) {
        return (i & 4) != 0;
    }

    public static boolean isPublic(int i) {
        return (i & 1) != 0;
    }

    public static boolean isStatic(int i) {
        return (i & 8) != 0;
    }

    public static boolean isSynchronized(int i) {
        return (i & 32) != 0;
    }

    private AccessFlags() {
    }

    public static String classString(int i) {
        return humanHelper(i, CLASS_FLAGS, 1);
    }

    public static String innerClassString(int i) {
        return humanHelper(i, INNER_CLASS_FLAGS, 1);
    }

    public static String fieldString(int i) {
        return humanHelper(i, FIELD_FLAGS, 2);
    }

    public static String methodString(int i) {
        return humanHelper(i, METHOD_FLAGS, 3);
    }

    private static String humanHelper(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder(80);
        int i4 = (~i2) & i;
        int i5 = i & i2;
        if ((i5 & 1) != 0) {
            sb.append("|public");
        }
        if ((i5 & 2) != 0) {
            sb.append("|private");
        }
        if ((i5 & 4) != 0) {
            sb.append("|protected");
        }
        if ((i5 & 8) != 0) {
            sb.append("|static");
        }
        if ((i5 & 16) != 0) {
            sb.append("|final");
        }
        if ((i5 & 32) != 0) {
            if (i3 == 1) {
                sb.append("|super");
            } else {
                sb.append("|synchronized");
            }
        }
        if ((i5 & 64) != 0) {
            if (i3 == 3) {
                sb.append("|bridge");
            } else {
                sb.append("|volatile");
            }
        }
        if ((i5 & 128) != 0) {
            if (i3 == 3) {
                sb.append("|varargs");
            } else {
                sb.append("|transient");
            }
        }
        if ((i5 & 256) != 0) {
            sb.append("|native");
        }
        if ((i5 & 512) != 0) {
            sb.append("|interface");
        }
        if ((i5 & 1024) != 0) {
            sb.append("|abstract");
        }
        if ((i5 & 2048) != 0) {
            sb.append("|strictfp");
        }
        if ((i5 & 4096) != 0) {
            sb.append("|synthetic");
        }
        if ((i5 & 8192) != 0) {
            sb.append("|annotation");
        }
        if ((i5 & 16384) != 0) {
            sb.append("|enum");
        }
        if ((65536 & i5) != 0) {
            sb.append("|constructor");
        }
        if ((i5 & 131072) != 0) {
            sb.append("|declared_synchronized");
        }
        if (i4 != 0 || sb.length() == 0) {
            sb.append('|');
            sb.append(Hex.m212u2(i4));
        }
        return sb.substring(1);
    }
}
