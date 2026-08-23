package org.mvel2.templates;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class SimpleTemplateRegistry implements TemplateRegistry {
    private Map<String, CompiledTemplate> NAMED_TEMPLATES = new HashMap();

    @Override // org.mvel2.templates.TemplateRegistry
    public void addNamedTemplate(String str, CompiledTemplate compiledTemplate) {
        this.NAMED_TEMPLATES.put(str, compiledTemplate);
    }

    @Override // org.mvel2.templates.TemplateRegistry
    public CompiledTemplate getNamedTemplate(String str) {
        CompiledTemplate compiledTemplate = this.NAMED_TEMPLATES.get(str);
        if (compiledTemplate != null) {
            return compiledTemplate;
        }
        throw new TemplateError("no named template exists '" + str + "'");
    }

    @Override // org.mvel2.templates.TemplateRegistry
    public Iterator iterator() {
        return this.NAMED_TEMPLATES.keySet().iterator();
    }

    @Override // org.mvel2.templates.TemplateRegistry
    public Set<String> getNames() {
        return this.NAMED_TEMPLATES.keySet();
    }

    @Override // org.mvel2.templates.TemplateRegistry
    public boolean contains(String str) {
        return this.NAMED_TEMPLATES.containsKey(str);
    }
}
