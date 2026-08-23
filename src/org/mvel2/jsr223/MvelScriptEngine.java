package org.mvel2.jsr223;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.util.Map;
import javax.script.AbstractScriptEngine;
import javax.script.Bindings;
import javax.script.Compilable;
import javax.script.CompiledScript;
import javax.script.ScriptContext;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineFactory;
import javax.script.ScriptException;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
public class MvelScriptEngine extends AbstractScriptEngine implements ScriptEngine, Compilable {
    private volatile MvelScriptEngineFactory factory;

    public Object eval(String str, ScriptContext scriptContext) {
        return evaluate(compiledScript(str), scriptContext);
    }

    public Object eval(Reader reader, ScriptContext scriptContext) {
        return eval(readFully(reader), scriptContext);
    }

    public Bindings createBindings() {
        return new MvelBindings();
    }

    public ScriptEngineFactory getFactory() {
        if (this.factory == null) {
            synchronized (this) {
                try {
                    if (this.factory == null) {
                        this.factory = new MvelScriptEngineFactory();
                    }
                } finally {
                }
            }
        }
        return this.factory;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.script.ScriptException */
    private static String readFully(Reader reader) throws ScriptException {
        char[] cArr = new char[8192];
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                int i = reader.read(cArr, 0, 8192);
                if (i > 0) {
                    sb.append(cArr, 0, i);
                } else {
                    return sb.toString();
                }
            } catch (IOException e) {
                throw new ScriptException(e);
            }
        }
    }

    public CompiledScript compile(String str) {
        return new MvelCompiledScript(this, compiledScript(str));
    }

    public CompiledScript compile(Reader reader) {
        return compile(readFully(reader));
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.script.ScriptException */
    public Serializable compiledScript(String str) throws ScriptException {
        try {
            return MVEL.compileExpression(str);
        } catch (Exception e) {
            throw new ScriptException(e);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.script.ScriptException */
    public Object evaluate(Serializable serializable, ScriptContext scriptContext) throws ScriptException {
        try {
            return MVEL.executeExpression((Object) serializable, (Map) scriptContext.getBindings(100));
        } catch (Exception e) {
            throw new ScriptException(e);
        }
    }
}
