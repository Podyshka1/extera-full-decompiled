package org.mvel2.asm;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ModuleVisitor {
    protected final int api;

    /* JADX INFO: renamed from: mv */
    protected ModuleVisitor f1565mv;

    protected ModuleVisitor(int i) {
        this(i, null);
    }

    protected ModuleVisitor(int i, ModuleVisitor moduleVisitor) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        if (i == 17432576) {
            Constants.checkAsmExperimental(this);
        }
        this.api = i;
        this.f1565mv = moduleVisitor;
    }

    public ModuleVisitor getDelegate() {
        return this.f1565mv;
    }

    public void visitMainClass(String str) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitMainClass(str);
        }
    }

    public void visitPackage(String str) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitPackage(str);
        }
    }

    public void visitRequire(String str, int i, String str2) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitRequire(str, i, str2);
        }
    }

    public void visitExport(String str, int i, String... strArr) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitExport(str, i, strArr);
        }
    }

    public void visitOpen(String str, int i, String... strArr) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitOpen(str, i, strArr);
        }
    }

    public void visitUse(String str) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitUse(str);
        }
    }

    public void visitProvide(String str, String... strArr) {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitProvide(str, strArr);
        }
    }

    public void visitEnd() {
        ModuleVisitor moduleVisitor = this.f1565mv;
        if (moduleVisitor != null) {
            moduleVisitor.visitEnd();
        }
    }
}
