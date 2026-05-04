package org.mvel2.optimizers.dynamic;

import java.util.LinkedList;
import org.mvel2.util.MVELClassLoader;

/* JADX INFO: loaded from: classes.dex */
public class DynamicClassLoader extends ClassLoader implements MVELClassLoader {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final LinkedList<DynamicAccessor> allAccessors;
    private int tenureLimit;
    private int totalClasses;

    public DynamicClassLoader(ClassLoader classLoader, int i) {
        super(classLoader);
        this.allAccessors = new LinkedList<>();
        this.tenureLimit = i;
    }

    @Override // org.mvel2.util.MVELClassLoader
    public Class defineClassX(String str, byte[] bArr, int i, int i2) {
        this.totalClasses++;
        return super.defineClass(str, bArr, i, i2);
    }

    public int getTotalClasses() {
        return this.totalClasses;
    }

    public DynamicAccessor registerDynamicAccessor(DynamicAccessor dynamicAccessor) {
        synchronized (this.allAccessors) {
            try {
                this.allAccessors.add(dynamicAccessor);
                while (this.allAccessors.size() > this.tenureLimit) {
                    DynamicAccessor dynamicAccessorRemoveFirst = this.allAccessors.removeFirst();
                    if (dynamicAccessorRemoveFirst != null) {
                        dynamicAccessorRemoveFirst.deoptimize();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dynamicAccessor;
    }

    public void deoptimizeAll() {
        synchronized (this.allAccessors) {
            try {
                for (DynamicAccessor dynamicAccessor : this.allAccessors) {
                    if (dynamicAccessor != null) {
                        dynamicAccessor.deoptimize();
                    }
                }
                this.allAccessors.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isOverloaded() {
        return this.tenureLimit < this.totalClasses;
    }
}
