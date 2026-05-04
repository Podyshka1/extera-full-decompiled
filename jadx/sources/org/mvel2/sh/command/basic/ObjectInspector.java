package org.mvel2.sh.command.basic;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.LinkedList;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.mvel2.sh.Command;
import org.mvel2.sh.ShellSession;
import org.mvel2.sh.text.TextUtil;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class ObjectInspector implements Command {
    private static final int PADDING = 17;

    @Override // org.mvel2.sh.Command
    public Object execute(ShellSession shellSession, String[] strArr) {
        long size;
        boolean z;
        if (strArr.length == 0) {
            System.out.println("inspect: requires an argument.");
            return null;
        }
        if (!shellSession.getVariables().containsKey(strArr[0])) {
            System.out.println("inspect: no such variable: " + strArr[0]);
            return null;
        }
        Object obj = shellSession.getVariables().get(strArr[0]);
        System.out.println("Object Inspector");
        System.out.println(TextUtil.paint(SignatureVisitor.SUPER, 17));
        if (obj == null) {
            System.out.println("[Value is Null]");
            return null;
        }
        Class<?> cls = obj.getClass();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(byteArrayOutputStream));
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            byteArrayOutputStream.flush();
            size = byteArrayOutputStream.size();
            z = true;
        } catch (Exception unused) {
            size = 0;
            z = false;
        }
        write("VariableName", strArr[0]);
        write("Hashcode", Integer.valueOf(obj.hashCode()));
        write("ClassType", cls.getName());
        write("Serializable", Boolean.valueOf(z));
        if (z) {
            write("SerializedSize", size + " bytes");
        }
        write("ClassHierarchy", renderClassHeirarchy(cls));
        write("Fields", Integer.valueOf(cls.getFields().length));
        renderFields(cls);
        write("Methods", Integer.valueOf(cls.getMethods().length));
        renderMethods(cls);
        System.out.println();
        return null;
    }

    private static String renderClassHeirarchy(Class cls) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(cls.getName());
        while (true) {
            cls = cls.getSuperclass();
            if (cls == null) {
                break;
            }
            linkedList.add(cls.getName());
        }
        StringAppender stringAppender = new StringAppender();
        int size = linkedList.size();
        while (true) {
            size--;
            if (size != -1) {
                stringAppender.append((String) linkedList.get(size));
                if (size - 1 != -1) {
                    stringAppender.append(" -> ");
                }
            } else {
                return stringAppender.toString();
            }
        }
    }

    private static void renderFields(Class cls) {
        Field[] fields = cls.getFields();
        for (int i = 0; i < fields.length; i++) {
            write(_UrlKt.FRAGMENT_ENCODE_SET, fields[i].getType().getName() + " " + fields[i].getName());
        }
    }

    private static void renderMethods(Class cls) {
        Method[] methods = cls.getMethods();
        StringAppender stringAppender = new StringAppender();
        int i = 0;
        while (i < methods.length) {
            stringAppender.append(TextUtil.paint(' ', 19));
            Method method = methods[i];
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0) {
                stringAppender.append("public");
            } else if ((modifiers & 2) != 0) {
                stringAppender.append("private");
            } else if ((modifiers & 4) != 0) {
                stringAppender.append("protected");
            }
            stringAppender.append(' ').append(method.getReturnType().getName()).append(' ').append(method.getName()).append("(");
            Class<?>[] parameterTypes = method.getParameterTypes();
            int i2 = 0;
            while (i2 < parameterTypes.length) {
                if (parameterTypes[i2].isArray()) {
                    stringAppender.append(parameterTypes[i2].getComponentType().getName() + _UrlKt.PATH_SEGMENT_ENCODE_SET_URI);
                } else {
                    stringAppender.append(parameterTypes[i2].getName());
                }
                i2++;
                if (i2 < parameterTypes.length) {
                    stringAppender.append(", ");
                }
            }
            stringAppender.append(")");
            if (method.getDeclaringClass() != cls) {
                stringAppender.append("    [inherited from: ").append(method.getDeclaringClass().getName()).append("]");
            }
            i++;
            if (i < methods.length) {
                stringAppender.append('\n');
            }
        }
        System.out.println(stringAppender.toString());
    }

    private static void write(Object obj, Object obj2) {
        System.out.println(TextUtil.padTwo(obj, ": " + obj2, 17));
    }

    @Override // org.mvel2.sh.Command
    public String getDescription() {
        return "inspects an object";
    }

    @Override // org.mvel2.sh.Command
    public String getHelp() {
        return "No help yet";
    }
}
