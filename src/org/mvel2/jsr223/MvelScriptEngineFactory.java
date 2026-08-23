package org.mvel2.jsr223;

import java.util.ArrayList;
import java.util.List;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineFactory;
import org.mvel2.MVEL;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes5.dex */
public class MvelScriptEngineFactory implements ScriptEngineFactory {
    private static final String ENGINE_NAME = "MVEL (MVFLEX Expression Language)";
    private static final String ENGINE_VERSION = "2.3";
    private static final List<String> EXTENSIONS;
    private static final String LANGUAGE_NAME = "mvel";
    private static final String LANGUAGE_VERSION = "2.3";
    private static final List<String> MIME_TYPES;
    private static final MvelScriptEngine MVEL_SCRIPT_ENGINE;
    private static final List<String> NAMES;

    public String getMethodCallSyntax(String str, String str2, String... strArr) {
        return null;
    }

    public String getOutputStatement(String str) {
        return null;
    }

    public String getProgram(String... strArr) {
        return null;
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(LANGUAGE_NAME);
        List<String> listUnmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        NAMES = listUnmodifiableList;
        EXTENSIONS = listUnmodifiableList;
        ArrayList arrayList2 = new ArrayList(1);
        arrayList2.add("application/x-mvel");
        MIME_TYPES = DesugarCollections.unmodifiableList(arrayList2);
        MVEL_SCRIPT_ENGINE = new MvelScriptEngine();
    }

    public String getEngineName() {
        return "MVEL (MVFLEX Expression Language)";
    }

    public String getEngineVersion() {
        return MVEL.VERSION;
    }

    public List<String> getExtensions() {
        return EXTENSIONS;
    }

    public List<String> getMimeTypes() {
        return MIME_TYPES;
    }

    public List<String> getNames() {
        return NAMES;
    }

    public String getLanguageName() {
        return LANGUAGE_NAME;
    }

    public String getLanguageVersion() {
        return MVEL.VERSION;
    }

    public Object getParameter(String str) {
        if (str.equals("javax.script.name")) {
            return getLanguageName();
        }
        if (str.equals("javax.script.engine")) {
            return getEngineName();
        }
        if (str.equals("javax.script.engine_version")) {
            return getEngineVersion();
        }
        if (str.equals("javax.script.language")) {
            return getLanguageName();
        }
        if (str.equals("javax.script.language_version")) {
            return getLanguageVersion();
        }
        if (str.equals("THREADING")) {
            return "THREAD-ISOLATED";
        }
        return null;
    }

    public ScriptEngine getScriptEngine() {
        return MVEL_SCRIPT_ENGINE;
    }
}
