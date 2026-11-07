package org.mvel2.sh;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Stack;
import java.util.TreeMap;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.MVELInterpretedRuntime;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.sh.command.basic.BasicCommandSet;
import org.mvel2.sh.command.file.FileCommandSet;
import org.mvel2.templates.TemplateRuntime;
import org.mvel2.util.PropertyTools;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class ShellSession {
    private static final String[] EMPTY = new String[0];
    public static final String PROMPT_VAR = "$PROMPT";
    private int cdepth;
    private String commandBuffer;
    private final Map<String, Command> commands;
    private Object ctxObject;
    private Stack<Object> ctxStack;
    private int depth;
    private Map<String, String> env;
    StringAppender inBuffer;
    VariableResolverFactory lvrf;
    private boolean multi;
    private int multiIndentSize;
    private PrintStream out;
    ParserContext pCtx;
    private String prompt;
    final BufferedReader readBuffer;
    private Map<String, Object> variables;

    public ShellSession() {
        TreeMap treeMap = new TreeMap();
        this.commands = treeMap;
        this.ctxStack = new Stack<>();
        this.pCtx = new ParserContext();
        this.multi = false;
        this.multiIndentSize = 0;
        this.out = System.out;
        this.inBuffer = new StringAppender();
        this.readBuffer = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Starting session...");
        this.variables = new HashMap();
        this.env = new HashMap();
        treeMap.putAll(new BasicCommandSet().load());
        treeMap.putAll(new FileCommandSet().load());
        this.env.put(PROMPT_VAR, DefaultEnvironment.PROMPT);
        this.env.put("$OS_NAME", System.getProperty("os.name"));
        this.env.put("$OS_VERSION", System.getProperty("os.version"));
        this.env.put("$JAVA_VERSION", PropertyTools.getJavaVersion());
        this.env.put("$CWD", new File(".").getAbsolutePath());
        this.env.put("$COMMAND_PASSTRU", "false");
        this.env.put("$PRINTOUTPUT", "true");
        this.env.put("$ECHO", "false");
        this.env.put("$SHOW_TRACES", "true");
        this.env.put("$USE_OPTIMIZER_ALWAYS", "false");
        this.env.put("$PATH", _UrlKt.FRAGMENT_ENCODE_SET);
        try {
            ResourceBundle bundle = ResourceBundle.getBundle(".mvelsh.properties");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                Map<String, String> map = this.env;
                String strNextElement = keys.nextElement();
                map.put(strNextElement, bundle.getString(strNextElement));
            }
        } catch (MissingResourceException unused) {
            System.out.println("No config file found.  Loading default config.");
            if (!PropertyTools.contains(System.getProperty("os.name").toLowerCase(), "windows")) {
                this.env.put("$PATH", "/bin:/usr/bin:/sbin:/usr/sbin");
            }
        }
        this.lvrf = new MapVariableResolverFactory(this.variables, new MapVariableResolverFactory(this.env));
    }

    public ShellSession(String str) {
        this();
        exec(str);
    }

    private void _exec() {
        String[] strArrSplit;
        Object objExecuteExpression;
        String[] strArr;
        final PrintStream printStream = System.out;
        if ("true".equals(this.env.get("$ECHO"))) {
            this.out.println(">" + this.commandBuffer);
            this.out.flush();
        }
        String[] strArrSplit2 = this.inBuffer.append(this.commandBuffer).toString().split("\\s");
        if (strArrSplit2.length != 0 && this.commands.containsKey(strArrSplit2[0])) {
            this.commandBuffer = null;
            if (strArrSplit2.length > 1) {
                int length = strArrSplit2.length - 1;
                strArr = new String[length];
                System.arraycopy(strArrSplit2, 1, strArr, 0, length);
            } else {
                strArr = EMPTY;
            }
            try {
                this.commands.get(strArrSplit2[0]).execute(this, strArr);
            } catch (CommandException e) {
                this.out.append((CharSequence) "Error: ").append((CharSequence) e.getMessage()).append((CharSequence) "\n");
            }
        } else {
            this.commandBuffer = null;
            try {
                if (shouldDefer(this.inBuffer)) {
                    this.multi = true;
                    return;
                }
                this.multi = false;
                if (Boolean.parseBoolean(this.env.get("$USE_OPTIMIZER_ALWAYS"))) {
                    objExecuteExpression = MVEL.executeExpression(MVEL.compileExpression(this.inBuffer.toString()), this.ctxObject, this.lvrf);
                } else {
                    objExecuteExpression = new MVELInterpretedRuntime(this.inBuffer.toString(), this.ctxObject, this.lvrf, this.pCtx).parse();
                }
                if (objExecuteExpression != null && "true".equals(this.env.get("$PRINTOUTPUT"))) {
                    boolean zIsArray = objExecuteExpression.getClass().isArray();
                    PrintStream printStream2 = this.out;
                    if (zIsArray) {
                        printStream2.println(Arrays.toString((Object[]) objExecuteExpression));
                    } else {
                        printStream2.println(String.valueOf(objExecuteExpression));
                    }
                }
            } catch (Exception e2) {
                if ("true".equals(this.env.get("$COMMAND_PASSTHRU"))) {
                    String str = strArrSplit2[0];
                    if (str.startsWith("./")) {
                        str = new File(this.env.get("$CWD")).getAbsolutePath() + str.substring(str.indexOf(47));
                        strArrSplit = new String[]{str};
                    } else {
                        strArrSplit = this.env.get("$PATH").split("(:|;)");
                    }
                    String str2 = str;
                    boolean z = false;
                    for (String str3 : strArrSplit) {
                        File file = new File(str3 + "/" + str2);
                        if (file.exists() && file.isFile()) {
                            String[] strArr2 = new String[strArrSplit2.length];
                            strArr2[0] = file.getAbsolutePath();
                            System.arraycopy(strArrSplit2, 1, strArr2, 1, strArrSplit2.length - 1);
                            try {
                                final Process processExec = Runtime.getRuntime().exec(strArr2);
                                final OutputStream outputStream = processExec.getOutputStream();
                                final InputStream inputStream = processExec.getInputStream();
                                processExec.getErrorStream();
                                final RunState runState = new RunState(this);
                                Thread thread = new Thread(new Runnable() { // from class: org.mvel2.sh.ShellSession.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        PrintStream printStream3;
                                        byte[] bArr = new byte[25];
                                        while (true) {
                                            try {
                                                int i = inputStream.read(bArr);
                                                if (i > 0) {
                                                    int i2 = 0;
                                                    while (true) {
                                                        printStream3 = printStream;
                                                        if (i2 >= i) {
                                                            break;
                                                        }
                                                        printStream3.print((char) bArr[i2]);
                                                        i2++;
                                                    }
                                                    printStream3.flush();
                                                } else if (!runState.isRunning()) {
                                                    break;
                                                }
                                            } catch (Exception unused) {
                                            }
                                        }
                                        printStream.flush();
                                        boolean z2 = ShellSession.this.multi;
                                        ShellSession shellSession = ShellSession.this;
                                        if (!z2) {
                                            shellSession.multiIndentSize = shellSession.prompt = String.valueOf(TemplateRuntime.eval((String) shellSession.env.get(ShellSession.PROMPT_VAR), ShellSession.this.variables)).length();
                                            ShellSession.this.out.append((CharSequence) ShellSession.this.prompt);
                                        } else {
                                            shellSession.out.append((CharSequence) ">").append((CharSequence) ShellSession.this.indent((r1.multiIndentSize - 1) + (ShellSession.this.depth * 4)));
                                        }
                                    }
                                });
                                Thread thread2 = new Thread(new Runnable() { // from class: org.mvel2.sh.ShellSession.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Thread thread3 = new Thread(new Runnable() { // from class: org.mvel2.sh.ShellSession.2.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                while (runState.isRunning()) {
                                                    try {
                                                        while (true) {
                                                            String line = ShellSession.this.readBuffer.readLine();
                                                            if (line == null) {
                                                                break;
                                                            }
                                                            if (!runState.isRunning()) {
                                                                runState.getSession().setCommandBuffer(line);
                                                                break;
                                                            } else {
                                                                for (char c2 : line.toCharArray()) {
                                                                    outputStream.write((byte) c2);
                                                                }
                                                            }
                                                        }
                                                    } catch (Exception unused) {
                                                        return;
                                                    }
                                                }
                                                outputStream.write(10);
                                                outputStream.flush();
                                            }
                                        });
                                        thread3.setPriority(1);
                                        thread3.start();
                                        try {
                                            processExec.waitFor();
                                        } catch (InterruptedException unused) {
                                        }
                                        printStream.flush();
                                        runState.setRunning(false);
                                        try {
                                            thread3.join();
                                        } catch (InterruptedException unused2) {
                                        }
                                    }
                                });
                                thread.setPriority(1);
                                thread.start();
                                thread2.setPriority(1);
                                thread2.start();
                                thread2.join();
                                thread.notify();
                            } catch (Exception unused) {
                            }
                            z = true;
                        }
                    }
                    if (z) {
                        this.inBuffer.reset();
                        return;
                    }
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream3 = new PrintStream(byteArrayOutputStream);
                e2.printStackTrace(printStream3);
                printStream3.flush();
                this.env.put("$LAST_STACK_TRACE", new String(byteArrayOutputStream.toByteArray()));
                boolean z2 = Boolean.parseBoolean(this.env.get("$SHOW_TRACE"));
                PrintStream printStream4 = this.out;
                if (z2) {
                    printStream4.println(this.env.get("$LAST_STACK_TRACE"));
                } else {
                    printStream4.println(e2.toString());
                }
                this.inBuffer.reset();
                return;
            }
        }
        this.inBuffer.reset();
    }

    public void run() {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        while (true) {
            try {
                printPrompt();
                if (this.commandBuffer == null) {
                    this.commandBuffer = bufferedReader.readLine();
                }
                _exec();
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("unexpected exception. exiting.");
                return;
            }
        }
    }

    public void printPrompt() {
        if (!this.multi) {
            String strValueOf = String.valueOf(TemplateRuntime.eval(this.env.get(PROMPT_VAR), (Map) this.variables));
            this.prompt = strValueOf;
            this.multiIndentSize = strValueOf.length();
            this.out.append((CharSequence) this.prompt);
            return;
        }
        this.out.append((CharSequence) ">").append((CharSequence) indent((this.multiIndentSize - 1) + (this.depth * 4)));
    }

    public boolean shouldDefer(StringAppender stringAppender) {
        int length = stringAppender.length();
        char[] cArr = new char[length];
        stringAppender.getChars(0, stringAppender.length(), cArr, 0);
        this.cdepth = 0;
        this.depth = 0;
        for (int i = 0; i < length; i++) {
            char c2 = cArr[i];
            if (c2 == '*') {
                int i2 = i + 1;
                if (i2 < length && cArr[i2] == '/') {
                    this.cdepth--;
                }
            } else if (c2 == '/') {
                int i3 = i + 1;
                if (i3 < length && cArr[i3] == '*') {
                    this.cdepth++;
                }
            } else if (c2 == '{') {
                this.depth++;
            } else if (c2 == '}') {
                this.depth--;
            }
        }
        return this.depth + this.cdepth > 0;
    }

    public String indent(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    public Map<String, Command> getCommands() {
        return this.commands;
    }

    public Map<String, Object> getVariables() {
        return this.variables;
    }

    public Map<String, String> getEnv() {
        return this.env;
    }

    public Object getCtxObject() {
        return this.ctxObject;
    }

    public void setCtxObject(Object obj) {
        pushCtxObject(obj);
    }

    public boolean pushCtxObject(Object obj) {
        Object obj2 = this.ctxObject;
        if (obj2 == obj) {
            return false;
        }
        this.ctxStack.push(obj2);
        this.ctxObject = obj;
        return true;
    }

    public boolean popCtxObject() {
        if (this.ctxStack.isEmpty()) {
            return false;
        }
        this.ctxObject = this.ctxStack.pop();
        return true;
    }

    public String getCommandBuffer() {
        return this.commandBuffer;
    }

    public void setCommandBuffer(String str) {
        this.commandBuffer = str;
    }

    public void exec(String str) {
        for (String str2 : str.split("\n")) {
            this.inBuffer.append(str2);
            _exec();
        }
    }

    public static final class RunState {
        private boolean running = true;
        private ShellSession session;

        public RunState(ShellSession shellSession) {
            this.session = shellSession;
        }

        public ShellSession getSession() {
            return this.session;
        }

        public void setSession(ShellSession shellSession) {
            this.session = shellSession;
        }

        public boolean isRunning() {
            return this.running;
        }

        public void setRunning(boolean z) {
            this.running = z;
        }
    }
}
