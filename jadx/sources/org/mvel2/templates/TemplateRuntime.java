package org.mvel2.templates;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.ImmutableDefaultFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.res.Node;
import org.mvel2.templates.util.TemplateOutputStream;
import org.mvel2.templates.util.TemplateTools;
import org.mvel2.templates.util.p027io.StandardOutputStream;
import org.mvel2.templates.util.p027io.StringAppenderStream;
import org.mvel2.templates.util.p027io.StringBuilderStream;
import org.mvel2.util.ExecutionStack;
import org.mvel2.util.StringAppender;

/* JADX INFO: loaded from: classes5.dex */
public class TemplateRuntime {
    private String baseDir;
    private TemplateRegistry namedTemplateRegistry;
    private ExecutionStack relPath;
    private Node rootNode;
    private char[] template;

    public TemplateRuntime(char[] cArr, TemplateRegistry templateRegistry, Node node, String str) {
        this.template = cArr;
        this.namedTemplateRegistry = templateRegistry;
        this.rootNode = node;
        this.baseDir = str;
    }

    public static Object eval(File file, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return execute(TemplateCompiler.compileTemplate(TemplateTools.readInFile(file)), obj, variableResolverFactory, templateRegistry);
    }

    public static Object eval(InputStream inputStream) {
        return eval(inputStream, (Object) null, new ImmutableDefaultFactory(), (TemplateRegistry) null);
    }

    public static Object eval(InputStream inputStream, Object obj) {
        return eval(inputStream, obj, new ImmutableDefaultFactory(), (TemplateRegistry) null);
    }

    public static Object eval(InputStream inputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        return eval(inputStream, obj, variableResolverFactory);
    }

    public static Object eval(InputStream inputStream, Object obj, Map map) {
        return eval(inputStream, obj, new MapVariableResolverFactory(map), (TemplateRegistry) null);
    }

    public static Object eval(InputStream inputStream, Object obj, Map map, TemplateRegistry templateRegistry) {
        return execute(TemplateCompiler.compileTemplate(TemplateTools.readStream(inputStream)), obj, new MapVariableResolverFactory(map), templateRegistry);
    }

    public static Object eval(InputStream inputStream, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return execute(TemplateCompiler.compileTemplate(TemplateTools.readStream(inputStream)), obj, variableResolverFactory, templateRegistry);
    }

    public static void eval(InputStream inputStream, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(TemplateTools.readStream(inputStream)), obj, variableResolverFactory, templateRegistry, outputStream);
    }

    public static Object eval(String str, Map map) {
        return execute(TemplateCompiler.compileTemplate(str), (Object) null, new MapVariableResolverFactory(map));
    }

    public static void eval(String str, Map map, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(str), (Object) null, new MapVariableResolverFactory(map), (TemplateRegistry) null, outputStream);
    }

    public static Object eval(String str, Object obj) {
        return execute(TemplateCompiler.compileTemplate(str), obj);
    }

    public static Object eval(String str, Object obj, Map map) {
        return execute(TemplateCompiler.compileTemplate(str), obj, new MapVariableResolverFactory(map));
    }

    public static void eval(String str, Object obj, Map map, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(str), obj, new MapVariableResolverFactory(map), (TemplateRegistry) null, outputStream);
    }

    public static Object eval(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return execute(TemplateCompiler.compileTemplate(str), obj, variableResolverFactory);
    }

    public static void eval(String str, Object obj, VariableResolverFactory variableResolverFactory, TemplateOutputStream templateOutputStream) {
        execute(TemplateCompiler.compileTemplate(str), obj, variableResolverFactory, (TemplateRegistry) null, templateOutputStream);
    }

    public static void eval(String str, Object obj, VariableResolverFactory variableResolverFactory, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(str), obj, variableResolverFactory, (TemplateRegistry) null, outputStream);
    }

    public static Object eval(String str, Map map, TemplateRegistry templateRegistry) {
        return execute(TemplateCompiler.compileTemplate(str), (Object) null, new MapVariableResolverFactory(map), templateRegistry);
    }

    public static void eval(String str, Map map, TemplateRegistry templateRegistry, TemplateOutputStream templateOutputStream) {
        execute(TemplateCompiler.compileTemplate(str), (Object) null, new MapVariableResolverFactory(map), templateRegistry, templateOutputStream);
    }

    public static void eval(String str, Map map, TemplateRegistry templateRegistry, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(str), (Object) null, new MapVariableResolverFactory(map), templateRegistry, outputStream);
    }

    public static Object eval(String str, Object obj, Map map, TemplateRegistry templateRegistry) {
        return execute(TemplateCompiler.compileTemplate(str), obj, new MapVariableResolverFactory(map), templateRegistry);
    }

    public static void eval(String str, Object obj, Map map, TemplateRegistry templateRegistry, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(str), obj, new MapVariableResolverFactory(map), templateRegistry, outputStream);
    }

    public static Object eval(String str, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return execute(TemplateCompiler.compileTemplate(str), obj, variableResolverFactory, templateRegistry);
    }

    public static void eval(String str, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, OutputStream outputStream) {
        execute(TemplateCompiler.compileTemplate(str), obj, variableResolverFactory, templateRegistry, outputStream);
    }

    public static void eval(String str, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, TemplateOutputStream templateOutputStream) {
        execute(TemplateCompiler.compileTemplate(str), obj, variableResolverFactory, templateRegistry, templateOutputStream);
    }

    public static Object execute(CompiledTemplate compiledTemplate) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringAppender(), (Object) null, new ImmutableDefaultFactory(), (TemplateRegistry) null);
    }

    public static void execute(CompiledTemplate compiledTemplate, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), (Object) null, new ImmutableDefaultFactory(), (TemplateRegistry) null);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringAppender(), obj, new ImmutableDefaultFactory(), (TemplateRegistry) null);
    }

    public static void execute(CompiledTemplate compiledTemplate, Object obj, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, new ImmutableDefaultFactory(), (TemplateRegistry) null);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Map map) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), (Object) null, new MapVariableResolverFactory(map), (TemplateRegistry) null);
    }

    public static void execute(CompiledTemplate compiledTemplate, Map map, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), (Object) null, new MapVariableResolverFactory(map), (TemplateRegistry) null);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, Map map) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, new MapVariableResolverFactory(map), (TemplateRegistry) null);
    }

    public static void execute(CompiledTemplate compiledTemplate, Object obj, Map map, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, new MapVariableResolverFactory(map), (TemplateRegistry) null);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, TemplateRegistry templateRegistry) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, (VariableResolverFactory) null, templateRegistry);
    }

    public static void execute(CompiledTemplate compiledTemplate, Object obj, TemplateRegistry templateRegistry, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, (VariableResolverFactory) null, templateRegistry);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, Map map, TemplateRegistry templateRegistry) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, new MapVariableResolverFactory(map), templateRegistry);
    }

    public static void execute(CompiledTemplate compiledTemplate, Object obj, Map map, TemplateRegistry templateRegistry, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, new MapVariableResolverFactory(map), templateRegistry);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, (TemplateRegistry) null);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, templateRegistry);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, String str) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, (TemplateRegistry) null, str);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, String str) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, templateRegistry, str);
    }

    public static void execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, OutputStream outputStream) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, variableResolverFactory, (TemplateRegistry) null);
    }

    public static void execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, OutputStream outputStream, String str) {
        execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, variableResolverFactory, (TemplateRegistry) null, str);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, OutputStream outputStream) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StandardOutputStream(outputStream), obj, variableResolverFactory, templateRegistry);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, TemplateOutputStream templateOutputStream) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), templateOutputStream, obj, variableResolverFactory, templateRegistry);
    }

    public static Object execute(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, TemplateOutputStream templateOutputStream, String str) {
        return execute(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), templateOutputStream, obj, variableResolverFactory, templateRegistry, str);
    }

    public static Object execute(Node node, char[] cArr, StringAppender stringAppender, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return new TemplateRuntime(cArr, templateRegistry, node, ".").execute(stringAppender, obj, variableResolverFactory);
    }

    public Object execute(StringBuilder sb, Object obj, VariableResolverFactory variableResolverFactory) {
        return execute(new StringBuilderStream(sb), obj, variableResolverFactory);
    }

    public static Object execute(Node node, char[] cArr, StringBuilder sb, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return new TemplateRuntime(cArr, templateRegistry, node, ".").execute(sb, obj, variableResolverFactory);
    }

    public static Object execute(Node node, char[] cArr, StringBuilder sb, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, String str) {
        return new TemplateRuntime(cArr, templateRegistry, node, str).execute(sb, obj, variableResolverFactory);
    }

    public static Object execute(Node node, char[] cArr, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry) {
        return new TemplateRuntime(cArr, templateRegistry, node, ".").execute(templateOutputStream, obj, variableResolverFactory);
    }

    public static Object execute(Node node, char[] cArr, TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory, TemplateRegistry templateRegistry, String str) {
        return new TemplateRuntime(cArr, templateRegistry, node, str).execute(templateOutputStream, obj, variableResolverFactory);
    }

    public Object execute(StringAppender stringAppender, Object obj, VariableResolverFactory variableResolverFactory) {
        return execute(new StringAppenderStream(stringAppender), obj, variableResolverFactory);
    }

    public Object execute(TemplateOutputStream templateOutputStream, Object obj, VariableResolverFactory variableResolverFactory) {
        return this.rootNode.eval(this, templateOutputStream, obj, variableResolverFactory);
    }

    public Node getRootNode() {
        return this.rootNode;
    }

    public void setRootNode(Node node) {
        this.rootNode = node;
    }

    public char[] getTemplate() {
        return this.template;
    }

    public void setTemplate(char[] cArr) {
        this.template = cArr;
    }

    public TemplateRegistry getNamedTemplateRegistry() {
        return this.namedTemplateRegistry;
    }

    public void setNamedTemplateRegistry(TemplateRegistry templateRegistry) {
        this.namedTemplateRegistry = templateRegistry;
    }

    public ExecutionStack getRelPath() {
        if (this.relPath == null) {
            ExecutionStack executionStack = new ExecutionStack();
            this.relPath = executionStack;
            executionStack.push(this.baseDir);
        }
        return this.relPath;
    }
}
