package com.android.p003dx.command;

/* JADX INFO: loaded from: classes4.dex */
public class Main {
    private static final String USAGE_MESSAGE = "usage:\n  dx --dex [--debug] [--verbose] [--positions=<style>] [--no-locals]\n  [--no-optimize] [--statistics] [--[no-]optimize-list=<file>] [--no-strict]\n  [--keep-classes] [--output=<file>] [--dump-to=<file>] [--dump-width=<n>]\n  [--dump-method=<name>[*]] [--verbose-dump] [--no-files] [--core-library]\n  [--num-threads=<n>] [--incremental] [--force-jumbo] [--no-warning]\n  [--multi-dex [--main-dex-list=<file> [--minimal-main-dex]]\n  [--input-list=<file>] [--min-sdk-version=<n>]\n  [--allow-all-interface-method-invokes]\n  [<file>.class | <file>.{zip,jar,apk} | <directory>] ...\n    Convert a set of classfiles into a dex file, optionally embedded in a\n    jar/zip. Output name must end with one of: .dex .jar .zip .apk or be a\n    directory.\n    Positions options: none, important, lines.\n    --multi-dex: allows to generate several dex files if needed. This option is\n    exclusive with --incremental, causes --num-threads to be ignored and only\n    supports folder or archive output.\n    --main-dex-list=<file>: <file> is a list of class file names, classes\n    defined by those class files are put in classes.dex.\n    --minimal-main-dex: only classes selected by --main-dex-list are to be put\n    in the main dex.\n    --input-list: <file> is a list of inputs.\n    Each line in <file> must end with one of: .class .jar .zip .apk or be a\n    directory.\n    --min-sdk-version=<n>: Enable dex file features that require at least sdk\n    version <n>.\n  dx --annotool --annotation=<class> [--element=<element types>]\n  [--print=<print types>]\n  dx --dump [--debug] [--strict] [--bytes] [--optimize]\n  [--basic-blocks | --rop-blocks | --ssa-blocks | --dot] [--ssa-step=<step>]\n  [--width=<n>] [<file>.class | <file>.txt] ...\n    Dump classfiles, or transformations thereof, in a human-oriented format.\n  dx --find-usages <file.dex> <declaring type> <member>\n    Find references and declarations to a field or method.\n    <declaring type> is a class name in internal form, like Ljava/lang/Object;\n    <member> is a field or method name, like hashCode.\n  dx -J<option> ... <arguments, in one of the above forms>\n    Pass VM-specific options to the virtual machine that runs dx.\n  dx --version\n    Print the version of this tool (1.16).\n  dx --help\n    Print this message.";

    private Main() {
    }

    public static void main(String[] strArr) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        int i = 0;
        while (true) {
            try {
                if (i >= strArr.length) {
                    z2 = false;
                    break;
                }
                String str = strArr[i];
                if (str.equals("--") || !str.startsWith("--")) {
                    break;
                }
                try {
                    if (str.equals("--dex")) {
                        com.android.p003dx.command.dexer.Main.main(without(strArr, i));
                        break;
                    }
                    if (str.equals("--dump")) {
                        com.android.p003dx.command.dump.Main.main(without(strArr, i));
                        break;
                    }
                    if (str.equals("--annotool")) {
                        com.android.p003dx.command.annotool.Main.main(without(strArr, i));
                        break;
                    }
                    if (str.equals("--find-usages")) {
                        com.android.p003dx.command.findusages.Main.main(without(strArr, i));
                        break;
                    }
                    if (str.equals("--version")) {
                        version();
                        break;
                    } else {
                        if (str.equals("--help")) {
                            z2 = true;
                            z3 = true;
                            break;
                        }
                        i++;
                    }
                } catch (UsageException unused) {
                    z3 = true;
                    z2 = true;
                } catch (RuntimeException e) {
                    e = e;
                    z = true;
                    System.err.println("\nUNEXPECTED TOP-LEVEL EXCEPTION:");
                    e.printStackTrace();
                    System.exit(2);
                    z2 = false;
                    z3 = z;
                } catch (Throwable th) {
                    th = th;
                    z = true;
                    System.err.println("\nUNEXPECTED TOP-LEVEL ERROR:");
                    th.printStackTrace();
                    if ((th instanceof NoClassDefFoundError) || (th instanceof NoSuchMethodError)) {
                        System.err.println("Note: You may be using an incompatible virtual machine or class library.\n(This program is known to be incompatible with recent releases of GCJ.)");
                    }
                    System.exit(3);
                    z2 = false;
                    z3 = z;
                }
            } catch (UsageException unused2) {
            } catch (RuntimeException e2) {
                e = e2;
                z = false;
            } catch (Throwable th2) {
                th = th2;
                z = false;
            }
        }
        z2 = false;
        z3 = true;
        if (!z3) {
            System.err.println("error: no command specified");
            z2 = true;
        }
        if (z2) {
            usage();
            System.exit(1);
        }
    }

    private static void version() {
        System.err.println("dx version 1.16");
        System.exit(0);
    }

    private static void usage() {
        System.err.println(USAGE_MESSAGE);
    }

    private static String[] without(String[] strArr, int i) {
        int length = strArr.length - 1;
        String[] strArr2 = new String[length];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        System.arraycopy(strArr, i + 1, strArr2, i, length - i);
        return strArr2;
    }
}
