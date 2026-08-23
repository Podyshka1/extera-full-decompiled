package com.android.p003dx.command.annotool;

import java.lang.annotation.ElementType;
import java.util.AbstractCollection;
import java.util.EnumSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class Main {

    enum PrintType {
        CLASS,
        INNERCLASS,
        METHOD,
        PACKAGE
    }

    private static class InvalidArgumentException extends Exception {
        InvalidArgumentException() {
        }

        InvalidArgumentException(String str) {
            super(str);
        }
    }

    static class Arguments {
        String aclass;
        String[] files;
        EnumSet<ElementType> eTypes = EnumSet.noneOf(ElementType.class);
        EnumSet<PrintType> printTypes = EnumSet.noneOf(PrintType.class);

        Arguments() {
        }

        void parse(String[] strArr) throws InvalidArgumentException {
            int i = 0;
            while (true) {
                if (i >= strArr.length) {
                    break;
                }
                String str = strArr[i];
                if (str.startsWith("--annotation=")) {
                    String strSubstring = str.substring(str.indexOf(61) + 1);
                    if (this.aclass != null) {
                        throw new InvalidArgumentException("--annotation can only be specified once.");
                    }
                    this.aclass = strSubstring.replace('.', '/');
                } else if (str.startsWith("--element=")) {
                    try {
                        for (String str2 : str.substring(str.indexOf(61) + 1).split(",")) {
                            this.eTypes.add(ElementType.valueOf(str2.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused) {
                        throw new InvalidArgumentException("invalid --element");
                    }
                } else if (str.startsWith("--print=")) {
                    try {
                        for (String str3 : str.substring(str.indexOf(61) + 1).split(",")) {
                            this.printTypes.add(PrintType.valueOf(str3.toUpperCase(Locale.ROOT)));
                        }
                    } catch (IllegalArgumentException unused2) {
                        throw new InvalidArgumentException("invalid --print");
                    }
                } else {
                    String[] strArr2 = new String[strArr.length - i];
                    this.files = strArr2;
                    System.arraycopy(strArr, i, strArr2, 0, strArr2.length);
                    break;
                }
                i++;
            }
            if (this.aclass == null) {
                throw new InvalidArgumentException("--annotation must be specified");
            }
            if (this.printTypes.isEmpty()) {
                this.printTypes.add(PrintType.CLASS);
            }
            if (this.eTypes.isEmpty()) {
                this.eTypes.add(ElementType.TYPE);
            }
            AbstractCollection abstractCollectionClone = this.eTypes.clone();
            abstractCollectionClone.remove(ElementType.TYPE);
            abstractCollectionClone.remove(ElementType.PACKAGE);
            if (!abstractCollectionClone.isEmpty()) {
                throw new InvalidArgumentException("only --element parameters 'type' and 'package' supported");
            }
        }
    }

    private Main() {
    }

    public static void main(String[] strArr) {
        Arguments arguments = new Arguments();
        try {
            arguments.parse(strArr);
            new AnnotationLister(arguments).process();
        } catch (InvalidArgumentException e) {
            System.err.println(e.getMessage());
            throw new RuntimeException("usage");
        }
    }
}
