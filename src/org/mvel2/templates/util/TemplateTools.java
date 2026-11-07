package org.mvel2.templates.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.mvel2.templates.TemplateError;
import org.mvel2.templates.res.Node;
import org.mvel2.templates.res.TerminalNode;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class TemplateTools {
    public static Node getLastNode(Node node) {
        while (!(node.getNext() instanceof TerminalNode)) {
            node = node.getNext();
        }
        return node;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int captureToEOS(char[] cArr, int i) {
        int length = cArr.length;
        while (i != length) {
            char c2 = cArr[i];
            if (c2 != '(') {
                if (c2 != ';') {
                    if (c2 != '[' && c2 != '{') {
                        if (c2 == '}') {
                            break;
                        }
                    }
                } else {
                    break;
                }
            } else {
                i = ParseTools.balancedCapture(cArr, i, c2);
            }
            i++;
        }
        return i;
    }

    public static String readInFile(String str) {
        return readInFile(new File(str));
    }

    public static String readInFile(File file) {
        try {
            FileChannel channel = new FileInputStream(file).getChannel();
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(10);
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i = channel.read(byteBufferAllocateDirect);
                if (i != -1) {
                    while (i != 0) {
                        sb.append((char) byteBufferAllocateDirect.get());
                        i--;
                    }
                } else {
                    channel.close();
                    return sb.toString();
                }
            }
        } catch (FileNotFoundException unused) {
            TemplateTools$$ExternalSyntheticBUOutline0.m969m("cannot include template '", file.getName(), "': file not found.");
            return null;
        } catch (IOException e) {
            throw new TemplateError("unknown I/O exception while including '" + file.getName() + "' (stacktrace nested)", e);
        }
    }

    public static String readStream(InputStream inputStream) {
        try {
            byte[] bArr = new byte[10];
            StringBuilder sb = new StringBuilder();
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    return sb.toString();
                }
                for (int i2 = 0; i2 < i; i2++) {
                    sb.append((char) bArr[i2]);
                }
            }
        } catch (IOException e) {
            throw new TemplateError("unknown I/O exception while including (stacktrace nested)", e);
        } catch (NullPointerException e2) {
            if (inputStream == null) {
                throw new TemplateError("null input stream", e2);
            }
            throw e2;
        }
    }
}
