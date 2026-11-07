package org.commonmark.parser.delimiter;

import org.commonmark.node.Text;

/* JADX INFO: loaded from: classes5.dex */
public interface DelimiterProcessor {
    char getClosingCharacter();

    int getDelimiterUse(DelimiterRun delimiterRun, DelimiterRun delimiterRun2);

    int getMinLength();

    char getOpeningCharacter();

    void process(Text text, Text text2, int i);
}
