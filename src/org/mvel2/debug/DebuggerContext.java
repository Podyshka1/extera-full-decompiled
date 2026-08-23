package org.mvel2.debug;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.ast.LineLabel;
import org.mvel2.compiler.CompiledExpression;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes5.dex */
public class DebuggerContext {
    private Debugger debugger;
    private int debuggerState = 0;
    private Map<String, Set<Integer>> breakpoints = new HashMap();

    public Map<String, Set<Integer>> getBreakpoints() {
        return this.breakpoints;
    }

    public void setBreakpoints(Map<String, Set<Integer>> map) {
        this.breakpoints = map;
    }

    public Debugger getDebugger() {
        return this.debugger;
    }

    public void setDebugger(Debugger debugger) {
        this.debugger = debugger;
    }

    public int getDebuggerState() {
        return this.debuggerState;
    }

    public void setDebuggerState(int i) {
        this.debuggerState = i;
    }

    public void registerBreakpoint(String str, int i) {
        if (!this.breakpoints.containsKey(str)) {
            this.breakpoints.put(str, new HashSet());
        }
        this.breakpoints.get(str).add(Integer.valueOf(i));
    }

    public void removeBreakpoint(String str, int i) {
        if (this.breakpoints.containsKey(str)) {
            this.breakpoints.get(str).remove(Integer.valueOf(i));
        }
    }

    public void clearAllBreakpoints() {
        this.breakpoints.clear();
    }

    public boolean hasBreakpoints() {
        return this.breakpoints.size() != 0;
    }

    public boolean hasBreakpoint(LineLabel lineLabel) {
        return this.breakpoints.containsKey(lineLabel.getSourceFile()) && this.breakpoints.get(lineLabel.getSourceFile()).contains(Integer.valueOf(lineLabel.getLineNumber()));
    }

    public boolean hasBreakpoint(String str, int i) {
        return this.breakpoints.containsKey(str) && this.breakpoints.get(str).contains(Integer.valueOf(i));
    }

    public boolean hasDebugger() {
        return this.debugger != null;
    }

    public int checkBreak(LineLabel lineLabel, VariableResolverFactory variableResolverFactory, CompiledExpression compiledExpression) {
        if (this.debuggerState != 1 && !hasBreakpoint(lineLabel)) {
            return 0;
        }
        Debugger debugger = this.debugger;
        if (debugger == null) {
            throw new RuntimeException("no debugger registered to handle breakpoint");
        }
        int iOnBreak = debugger.onBreak(new Frame(lineLabel, variableResolverFactory));
        this.debuggerState = iOnBreak;
        return iOnBreak;
    }
}
