package com.google.common.base;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes5.dex */
public final class Splitter {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final Strategy strategy;
    private final CharMatcher trimmer;

    /* JADX INFO: Access modifiers changed from: private */
    interface Strategy {
        Iterator iterator(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(Strategy strategy) {
        this(strategy, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    private Splitter(Strategy strategy, boolean z, CharMatcher charMatcher, int i) {
        this.strategy = strategy;
        this.omitEmptyStrings = z;
        this.trimmer = charMatcher;
        this.limit = i;
    }

    /* JADX INFO: renamed from: on */
    public static Splitter m480on(char c) {
        return m481on(CharMatcher.m477is(c));
    }

    /* JADX INFO: renamed from: on */
    public static Splitter m481on(final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new Strategy() { // from class: com.google.common.base.Splitter$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Splitter.Strategy
            public final Iterator iterator(Splitter splitter, CharSequence charSequence) {
                return Splitter.m3509$r8$lambda$CK_F_WMWUv6g4fX5TCs4Q17sbA(charMatcher, splitter, charSequence);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$CK-_F_WMWUv6g4fX5TCs4Q17sbA, reason: not valid java name */
    public static /* synthetic */ Iterator m3509$r8$lambda$CK_F_WMWUv6g4fX5TCs4Q17sbA(final CharMatcher charMatcher, Splitter splitter, CharSequence charSequence) {
        return new SplittingIterator(splitter, charSequence) { // from class: com.google.common.base.Splitter.1
            @Override // com.google.common.base.Splitter.SplittingIterator
            int separatorEnd(int i) {
                return i + 1;
            }

            @Override // com.google.common.base.Splitter.SplittingIterator
            int separatorStart(int i) {
                return charMatcher.indexIn(this.toSplit, i);
            }
        };
    }

    private Iterator splittingIterator(CharSequence charSequence) {
        return this.strategy.iterator(this, charSequence);
    }

    public List splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator itSplittingIterator = splittingIterator(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itSplittingIterator.hasNext()) {
            arrayList.add((String) itSplittingIterator.next());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    private static abstract class SplittingIterator extends AbstractIterator {
        int limit;
        int offset = 0;
        final boolean omitEmptyStrings;
        final CharSequence toSplit;
        final CharMatcher trimmer;

        abstract int separatorEnd(int i);

        abstract int separatorStart(int i);

        SplittingIterator(Splitter splitter, CharSequence charSequence) {
            this.trimmer = splitter.trimmer;
            this.omitEmptyStrings = splitter.omitEmptyStrings;
            this.limit = splitter.limit;
            this.toSplit = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.AbstractIterator
        public String computeNext() {
            int iSeparatorStart;
            int i = this.offset;
            while (true) {
                int i2 = this.offset;
                if (i2 != -1) {
                    iSeparatorStart = separatorStart(i2);
                    if (iSeparatorStart == -1) {
                        iSeparatorStart = this.toSplit.length();
                        this.offset = -1;
                    } else {
                        this.offset = separatorEnd(iSeparatorStart);
                    }
                    int i3 = this.offset;
                    if (i3 == i) {
                        int i4 = i3 + 1;
                        this.offset = i4;
                        if (i4 > this.toSplit.length()) {
                            this.offset = -1;
                        }
                    } else {
                        while (i < iSeparatorStart && this.trimmer.matches(this.toSplit.charAt(i))) {
                            i++;
                        }
                        while (iSeparatorStart > i && this.trimmer.matches(this.toSplit.charAt(iSeparatorStart - 1))) {
                            iSeparatorStart--;
                        }
                        if (!this.omitEmptyStrings || i != iSeparatorStart) {
                            break;
                        }
                        i = this.offset;
                    }
                } else {
                    return (String) endOfData();
                }
            }
            int i5 = this.limit;
            if (i5 == 1) {
                iSeparatorStart = this.toSplit.length();
                this.offset = -1;
                while (iSeparatorStart > i && this.trimmer.matches(this.toSplit.charAt(iSeparatorStart - 1))) {
                    iSeparatorStart--;
                }
            } else {
                this.limit = i5 - 1;
            }
            return this.toSplit.subSequence(i, iSeparatorStart).toString();
        }
    }
}
