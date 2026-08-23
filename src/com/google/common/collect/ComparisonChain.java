package com.google.common.collect;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ComparisonChain {
    private static final ComparisonChain ACTIVE = new ComparisonChain() { // from class: com.google.common.collect.ComparisonChain.1
        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return 0;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Object obj, Object obj2, Comparator comparator) {
            return classify(comparator.compare(obj, obj2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return classify(Integer.compare(i, i2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return classify(Long.compare(j, j2));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return classify(Boolean.compare(z2, z));
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return classify(Boolean.compare(z, z2));
        }

        ComparisonChain classify(int i) {
            if (i < 0) {
                return ComparisonChain.LESS;
            }
            return i > 0 ? ComparisonChain.GREATER : ComparisonChain.ACTIVE;
        }
    };
    private static final ComparisonChain LESS = new InactiveComparisonChain(-1);
    private static final ComparisonChain GREATER = new InactiveComparisonChain(1);

    public abstract ComparisonChain compare(int i, int i2);

    public abstract ComparisonChain compare(long j, long j2);

    public abstract ComparisonChain compare(Object obj, Object obj2, Comparator comparator);

    public abstract ComparisonChain compareFalseFirst(boolean z, boolean z2);

    public abstract ComparisonChain compareTrueFirst(boolean z, boolean z2);

    public abstract int result();

    private ComparisonChain() {
    }

    public static ComparisonChain start() {
        return ACTIVE;
    }

    private static final class InactiveComparisonChain extends ComparisonChain {
        final int result;

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compare(Object obj, Object obj2, Comparator comparator) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareFalseFirst(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.ComparisonChain
        public ComparisonChain compareTrueFirst(boolean z, boolean z2) {
            return this;
        }

        InactiveComparisonChain(int i) {
            super();
            this.result = i;
        }

        @Override // com.google.common.collect.ComparisonChain
        public int result() {
            return this.result;
        }
    }
}
