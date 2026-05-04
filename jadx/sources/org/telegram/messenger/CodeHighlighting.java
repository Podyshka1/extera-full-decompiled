package org.telegram.messenger;

import android.graphics.Typeface;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.TextStyleSpan;

/* JADX INFO: loaded from: classes.dex */
public class CodeHighlighting {
    public static final int MATCH_COMMENT = 6;
    public static final int MATCH_CONSTANT = 3;
    public static final int MATCH_FUNCTION = 7;
    public static final int MATCH_KEYWORD = 1;
    public static final int MATCH_NONE = 0;
    public static final int MATCH_NUMBER = 5;
    public static final int MATCH_OPERATOR = 2;
    public static final int MATCH_STRING = 4;
    private static HashMap<String, TokenPattern[]> compiledPatterns;
    private static final HashMap<String, Highlighting> processedHighlighting = new HashMap<>();

    public static int getTextSizeDecrement(int i) {
        if (i > 120) {
            return 5;
        }
        return i > 50 ? 3 : 2;
    }

    public static class Span extends CharacterStyle {
        public final String code;
        public final int currentType;
        public final float decrementSize;
        public final String lng;
        public final boolean smallerSize;
        public final TextStyleSpan.TextStyleRun style;

        public Span(boolean z, int i, TextStyleSpan.TextStyleRun textStyleRun, String str, String str2) {
            this.smallerSize = z;
            this.lng = str;
            this.code = str2;
            this.decrementSize = CodeHighlighting.getTextSizeDecrement(str2 == null ? 0 : str2.length());
            this.currentType = i;
            this.style = textStyleRun;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (this.smallerSize) {
                textPaint.setTextSize(AndroidUtilities.m1124dp(SharedConfig.fontSize - this.decrementSize));
            }
            int i = this.currentType;
            if (i == 2) {
                textPaint.setColor(-1);
            } else if (i == 1) {
                textPaint.setColor(Theme.getColor(Theme.key_chat_messageTextOut));
            } else {
                textPaint.setColor(Theme.getColor(Theme.key_chat_messageTextIn));
            }
            TextStyleSpan.TextStyleRun textStyleRun = this.style;
            if (textStyleRun != null) {
                textStyleRun.applyStyle(textPaint);
            } else {
                textPaint.setTypeface(Typeface.MONOSPACE);
                textPaint.setUnderlineText(false);
            }
        }
    }

    public static class ColorSpan extends CharacterStyle {
        public int group;

        public ColorSpan(int i) {
            this.group = i;
        }

        public int getColorKey() {
            switch (this.group) {
                case 1:
                    return Theme.key_code_keyword;
                case 2:
                    return Theme.key_code_operator;
                case 3:
                    return Theme.key_code_constant;
                case 4:
                    return Theme.key_code_string;
                case 5:
                    return Theme.key_code_number;
                case 6:
                    return Theme.key_code_comment;
                case 7:
                    return Theme.key_code_function;
                default:
                    return -1;
            }
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(Theme.getColor(getColorKey()));
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class LockedSpannableString extends SpannableString {
        private boolean ready;

        public LockedSpannableString(CharSequence charSequence) {
            super(charSequence);
        }

        public void unlock() {
            this.ready = true;
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public <T> T[] getSpans(int i, int i2, Class<T> cls) {
            return !this.ready ? (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 0)) : (T[]) super.getSpans(i, i2, cls);
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int nextSpanTransition(int i, int i2, Class cls) {
            return !this.ready ? i2 : super.nextSpanTransition(i, i2, cls);
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int getSpanStart(Object obj) {
            if (this.ready) {
                return super.getSpanStart(obj);
            }
            return -1;
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int getSpanEnd(Object obj) {
            if (this.ready) {
                return super.getSpanEnd(obj);
            }
            return -1;
        }

        @Override // android.text.SpannableString, android.text.Spanned
        public int getSpanFlags(Object obj) {
            if (this.ready) {
                return super.getSpanFlags(obj);
            }
            return 0;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class Highlighting {
        String language;
        SpannableString result;
        String text;

        private Highlighting() {
        }
    }

    public static SpannableString getHighlighted(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return new SpannableString(str);
        }
        String str3 = str2 + "`" + str;
        HashMap<String, Highlighting> map = processedHighlighting;
        Highlighting highlighting = map.get(str3);
        if (highlighting == null) {
            highlighting = new Highlighting();
            highlighting.text = str;
            highlighting.language = str2;
            LockedSpannableString lockedSpannableString = new LockedSpannableString(str);
            highlighting.result = lockedSpannableString;
            highlight(lockedSpannableString, 0, lockedSpannableString.length(), str2, 0, null, true);
            Iterator<String> it = map.keySet().iterator();
            while (it.hasNext() && processedHighlighting.size() > 8) {
                it.next();
                it.remove();
            }
            processedHighlighting.put(str3, highlighting);
        }
        return highlighting.result;
    }

    public static void highlight(final Spannable spannable, final int i, final int i2, final String str, int i3, TextStyleSpan.TextStyleRun textStyleRun, boolean z) {
        if (spannable == null) {
            return;
        }
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.CodeHighlighting$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                CodeHighlighting.$r8$lambda$XTnjLp_BVmwXi3aPqiNejzIqyz8(spannable, i, i2, str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$XTnjLp_BVmwXi3aPqiNejzIqyz8(final Spannable spannable, int i, int i2, String str) throws Throwable {
        if (compiledPatterns == null) {
            parse();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringToken[][] stringTokenArr = new StringToken[1][];
        try {
            String string = spannable.subSequence(i, i2).toString();
            HashMap<String, TokenPattern[]> map = compiledPatterns;
            stringTokenArr[0] = tokenize(string, map == null ? null : map.get(str), 0).toArray();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        FileLog.m1133d("[CodeHighlighter] tokenize took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        final ArrayList arrayList = new ArrayList();
        colorize(spannable, i, i2, stringTokenArr[0], -1, arrayList);
        FileLog.m1133d("[CodeHighlighter] colorize took " + (System.currentTimeMillis() - jCurrentTimeMillis2) + "ms");
        if (arrayList.isEmpty()) {
            return;
        }
        if (spannable instanceof LockedSpannableString) {
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                CachedToSpan cachedToSpan = (CachedToSpan) arrayList.get(i3);
                spannable.setSpan(new ColorSpan(cachedToSpan.group), cachedToSpan.start, cachedToSpan.end, 33);
            }
            FileLog.m1133d("[CodeHighlighter] applying " + arrayList.size() + " colorize spans took " + (System.currentTimeMillis() - jCurrentTimeMillis3) + "ms in another thread");
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.CodeHighlighting$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    CodeHighlighting.$r8$lambda$mzuyXfKHVh0JETHAwovMvh_UuJ8(spannable);
                }
            });
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.CodeHighlighting$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CodeHighlighting.m3967$r8$lambda$UiXL2Y0hc7PijByg2qsFXIT_c(arrayList, spannable);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$mzuyXfKHVh0JETHAwovMvh_UuJ8(Spannable spannable) {
        ((LockedSpannableString) spannable).unlock();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiLoaded, new Object[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$UiXL2Y0-hc7PijByg2q-sFXIT_c, reason: not valid java name */
    public static /* synthetic */ void m3967$r8$lambda$UiXL2Y0hc7PijByg2qsFXIT_c(ArrayList arrayList, Spannable spannable) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i = 0; i < arrayList.size(); i++) {
            CachedToSpan cachedToSpan = (CachedToSpan) arrayList.get(i);
            spannable.setSpan(new ColorSpan(cachedToSpan.group), cachedToSpan.start, cachedToSpan.end, 33);
        }
        FileLog.m1133d("[CodeHighlighter] applying " + arrayList.size() + " colorize spans took " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.emojiLoaded, new Object[0]);
    }

    private static void colorize(Spannable spannable, int i, int i2, StringToken[] stringTokenArr, int i3, ArrayList<CachedToSpan> arrayList) {
        Spannable spannable2;
        ArrayList<CachedToSpan> arrayList2;
        if (stringTokenArr == null) {
            return;
        }
        int i4 = 0;
        int length = i;
        while (i4 < stringTokenArr.length && length < i2) {
            StringToken stringToken = stringTokenArr[i4];
            if (stringToken != null) {
                if (stringToken.string != null) {
                    int i5 = stringToken.group;
                    if (i3 != -1) {
                        i5 = i3;
                    }
                    if (i5 == -1) {
                        length += stringToken.length();
                        spannable2 = spannable;
                        arrayList2 = arrayList;
                    } else {
                        arrayList.add(new CachedToSpan(i5, length, stringToken.length() + length));
                    }
                } else {
                    if (stringToken.inside != null) {
                        spannable2 = spannable;
                        arrayList2 = arrayList;
                        colorize(spannable2, length, length + stringToken.length(), stringToken.inside.toArray(), stringToken.group, arrayList2);
                    }
                    length += stringToken.length();
                }
                spannable2 = spannable;
                arrayList2 = arrayList;
                length += stringToken.length();
            } else {
                spannable2 = spannable;
                arrayList2 = arrayList;
            }
            i4++;
            spannable = spannable2;
            arrayList = arrayList2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class CachedToSpan {
        public int end;
        public int group;
        public int start;

        public CachedToSpan(int i, int i2, int i3) {
            this.group = i;
            this.start = i2;
            this.end = i3;
        }
    }

    private static LinkedList tokenize(String str, TokenPattern[] tokenPatternArr, int i) {
        return tokenize(str, tokenPatternArr, null, i);
    }

    private static LinkedList tokenize(String str, TokenPattern[] tokenPatternArr, TokenPattern tokenPattern, int i) {
        LinkedList linkedList = new LinkedList();
        linkedList.addAfter(linkedList.head, new StringToken(str));
        matchGrammar(str, linkedList, flatRest(tokenPatternArr), linkedList.head, 0, null, tokenPattern, i);
        return linkedList;
    }

    private static TokenPattern[] flatRest(TokenPattern[] tokenPatternArr) {
        HashMap<String, TokenPattern[]> map;
        TokenPattern[] tokenPatternArr2;
        ArrayList arrayList = null;
        if (tokenPatternArr == null) {
            return null;
        }
        for (int i = 0; i < tokenPatternArr.length; i++) {
            CachedPattern cachedPattern = tokenPatternArr[i].pattern;
            if (cachedPattern != null && "REST".equals(cachedPattern.patternSource)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    Collections.addAll(arrayList, tokenPatternArr);
                }
                arrayList.remove(tokenPatternArr[i]);
                if (!TextUtils.isEmpty(tokenPatternArr[i].insideLanguage) && (map = compiledPatterns) != null && (tokenPatternArr2 = map.get(tokenPatternArr[i].insideLanguage)) != null) {
                    Collections.addAll(arrayList, tokenPatternArr2);
                }
            }
        }
        return arrayList != null ? (TokenPattern[]) arrayList.toArray(new TokenPattern[0]) : tokenPatternArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void matchGrammar(String str, LinkedList linkedList, TokenPattern[] tokenPatternArr, Node node, int i, RematchOptions rematchOptions, TokenPattern tokenPattern, int i2) {
        int i3;
        Match matchMatchPattern;
        int i4;
        String strSubstring;
        String strSubstring2;
        int length;
        TokenPattern[] tokenPatternArr2;
        int i5;
        StringToken stringToken;
        int i6;
        String str2 = str;
        LinkedList linkedList2 = linkedList;
        TokenPattern[] tokenPatternArr3 = tokenPatternArr;
        if (tokenPatternArr3 == null || i2 > 20) {
            return;
        }
        int length2 = tokenPatternArr3.length;
        int i7 = 0;
        while (i7 < length2) {
            TokenPattern tokenPattern2 = tokenPatternArr3[i7];
            if (tokenPattern2 == tokenPattern) {
                return;
            }
            if (rematchOptions != null && rematchOptions.cause == tokenPattern2) {
                return;
            }
            Node node2 = node.next;
            int length3 = i;
            while (node2 != linkedList2.tail) {
                if (rematchOptions != null && length3 >= rematchOptions.reach) {
                    return;
                }
                if (linkedList2.length > str2.length()) {
                    FileLog.m1134e("[CodeHighlighter] Something went terribly wrong, ABORT, ABORT!");
                    return;
                }
                StringToken stringToken2 = node2.value;
                String strSubstring3 = stringToken2.string;
                if (strSubstring3 != null && !stringToken2.token) {
                    if (tokenPattern2.greedy) {
                        matchMatchPattern = matchPattern(tokenPattern2, length3, str2);
                        if (matchMatchPattern == null || matchMatchPattern.index >= str2.length()) {
                            break;
                        }
                        int i8 = matchMatchPattern.index;
                        int i9 = matchMatchPattern.length + i8;
                        int length4 = node2.value.length();
                        while (true) {
                            length3 += length4;
                            if (i8 < length3) {
                                break;
                            }
                            node2 = node2.next;
                            length4 = node2.value.length();
                        }
                        length3 -= node2.value.length();
                        StringToken stringToken3 = node2.value;
                        if (stringToken3.string != null && !stringToken3.token) {
                            int length5 = length3;
                            int i10 = 1;
                            for (Node node3 = node2; node3 != linkedList2.tail && (length5 < i9 || !node3.value.token); node3 = node3.next) {
                                i10++;
                                length5 += node3.value.length();
                            }
                            strSubstring3 = str2.substring(length3, length5);
                            matchMatchPattern.index -= length3;
                            i4 = i10 - 1;
                            i3 = 0;
                            int i11 = matchMatchPattern.index;
                            strSubstring = strSubstring3.substring(i3, i11);
                            strSubstring2 = strSubstring3.substring(i11 + matchMatchPattern.length);
                            length = strSubstring3.length() + length3;
                            if (rematchOptions != null && length > rematchOptions.reach) {
                                rematchOptions.reach = length;
                            }
                            Node nodeAddAfter = node2.prev;
                            if (strSubstring.length() > 0) {
                                nodeAddAfter = linkedList2.addAfter(nodeAddAfter, new StringToken(strSubstring));
                                length3 += strSubstring.length();
                            }
                            linkedList2.removeRange(nodeAddAfter, i4);
                            tokenPatternArr2 = tokenPattern2.insideTokenPatterns;
                            if (tokenPatternArr2 == null) {
                                i5 = length3;
                                stringToken = new StringToken(tokenPattern2.group, tokenize(matchMatchPattern.string, tokenPatternArr2, tokenPattern2, i2 + 1), matchMatchPattern.length);
                            } else {
                                i5 = length3;
                                String str3 = tokenPattern2.insideLanguage;
                                if (str3 != null) {
                                    stringToken = new StringToken(tokenPattern2.group, tokenize(matchMatchPattern.string, compiledPatterns.get(str3), tokenPattern2, i2 + 1), matchMatchPattern.length);
                                } else {
                                    stringToken = new StringToken(tokenPattern2.group, matchMatchPattern.string);
                                }
                            }
                            Node nodeAddAfter2 = linkedList2.addAfter(nodeAddAfter, stringToken);
                            if (strSubstring2.length() > 0) {
                                linkedList2.addAfter(nodeAddAfter2, new StringToken(strSubstring2));
                            }
                            if (i4 > 1) {
                                RematchOptions rematchOptions2 = new RematchOptions();
                                rematchOptions2.cause = tokenPattern2;
                                rematchOptions2.reach = length;
                                matchGrammar(str, linkedList2, tokenPatternArr, nodeAddAfter2.prev, i5, rematchOptions2, tokenPattern, i2 + 1);
                                if (rematchOptions != null && (i6 = rematchOptions2.reach) > rematchOptions.reach) {
                                    rematchOptions.reach = i6;
                                }
                            }
                            node2 = nodeAddAfter2;
                            length3 = i5;
                        }
                    } else {
                        i3 = 0;
                        matchMatchPattern = matchPattern(tokenPattern2, 0, strSubstring3);
                        if (matchMatchPattern != null) {
                            i4 = 1;
                            int i112 = matchMatchPattern.index;
                            strSubstring = strSubstring3.substring(i3, i112);
                            strSubstring2 = strSubstring3.substring(i112 + matchMatchPattern.length);
                            length = strSubstring3.length() + length3;
                            if (rematchOptions != null) {
                                rematchOptions.reach = length;
                            }
                            Node nodeAddAfter3 = node2.prev;
                            if (strSubstring.length() > 0) {
                            }
                            linkedList2.removeRange(nodeAddAfter3, i4);
                            tokenPatternArr2 = tokenPattern2.insideTokenPatterns;
                            if (tokenPatternArr2 == null) {
                            }
                            Node nodeAddAfter22 = linkedList2.addAfter(nodeAddAfter3, stringToken);
                            if (strSubstring2.length() > 0) {
                            }
                            if (i4 > 1) {
                            }
                            node2 = nodeAddAfter22;
                            length3 = i5;
                        }
                    }
                }
                length3 += node2.value.length();
                node2 = node2.next;
                str2 = str;
                linkedList2 = linkedList;
            }
            i7++;
            str2 = str;
            linkedList2 = linkedList;
            tokenPatternArr3 = tokenPatternArr;
        }
    }

    private static Match matchPattern(TokenPattern tokenPattern, int i, String str) {
        try {
            Matcher matcher = tokenPattern.pattern.getPattern().matcher(str);
            matcher.region(i, str.length());
            if (!matcher.find()) {
                return null;
            }
            Match match = new Match();
            match.index = matcher.start();
            if (tokenPattern.lookbehind && matcher.groupCount() >= 1) {
                match.index += matcher.end(1) - matcher.start(1);
            }
            int iEnd = matcher.end();
            int i2 = match.index;
            int i3 = iEnd - i2;
            match.length = i3;
            match.string = str.substring(i2, i3 + i2);
            return match;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class RematchOptions {
        TokenPattern cause;
        int reach;

        private RematchOptions() {
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class Match {
        int index;
        int length;
        String string;

        private Match() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class LinkedList {
        public Node head;
        public int length = 0;
        public Node tail;

        public LinkedList() {
            this.head = new Node();
            Node node = new Node();
            this.tail = node;
            Node node2 = this.head;
            node2.next = node;
            node.prev = node2;
        }

        public Node addAfter(Node node, StringToken stringToken) {
            Node node2 = node.next;
            Node node3 = new Node();
            node3.value = stringToken;
            node3.prev = node;
            node3.next = node2;
            node.next = node3;
            node2.prev = node3;
            this.length++;
            return node3;
        }

        public void removeRange(Node node, int i) {
            Node node2 = node.next;
            int i2 = 0;
            while (i2 < i && node2 != this.tail) {
                node2 = node2.next;
                i2++;
            }
            node.next = node2;
            node2.prev = node;
            this.length -= i2;
        }

        public StringToken[] toArray() {
            StringToken[] stringTokenArr = new StringToken[this.length];
            Node node = this.head.next;
            for (int i = 0; i < this.length && node != this.tail; i++) {
                stringTokenArr[i] = node.value;
                node = node.next;
            }
            return stringTokenArr;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class Node {
        public Node next;
        public Node prev;
        public StringToken value;

        private Node() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class StringToken {
        final int group;
        final LinkedList inside;
        final int insideLength;
        final String string;
        final boolean token;

        public StringToken(int i, String str) {
            this.token = true;
            this.group = i;
            this.string = str;
            this.inside = null;
            this.insideLength = 0;
        }

        public StringToken(int i, LinkedList linkedList, int i2) {
            this.token = true;
            this.group = i;
            this.string = null;
            this.inside = linkedList;
            this.insideLength = i2;
        }

        public StringToken(String str) {
            this.token = false;
            this.group = -1;
            this.string = str;
            this.inside = null;
            this.insideLength = 0;
        }

        public int length() {
            String str = this.string;
            if (str != null) {
                return str.length();
            }
            return this.insideLength;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013a A[Catch: Exception -> 0x0136, TryCatch #6 {Exception -> 0x0136, blocks: (B:67:0x0132, B:71:0x013a, B:73:0x013f), top: B:78:0x0132 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013f A[Catch: Exception -> 0x0136, TRY_LEAVE, TryCatch #6 {Exception -> 0x0136, blocks: (B:67:0x0132, B:71:0x013a, B:73:0x013f), top: B:78:0x0132 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.telegram.messenger.CodeHighlighting-IA] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.zip.GZIPInputStream] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.InputStream, java.util.zip.GZIPInputStream] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.io.BufferedInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parse() throws Throwable {
        InputStream inputStreamOpen;
        ?? gZIPInputStream;
        ?? bufferedInputStream;
        long jCurrentTimeMillis;
        ?? r1 = 0;
        r1 = 0;
        try {
            try {
                jCurrentTimeMillis = System.currentTimeMillis();
                inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open("codelng.gzip");
                try {
                    gZIPInputStream = new GZIPInputStream(inputStreamOpen, 65536);
                    try {
                        bufferedInputStream = new BufferedInputStream(gZIPInputStream, 65536);
                    } catch (Exception e) {
                        e = e;
                        bufferedInputStream = 0;
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = 0;
                    }
                } catch (Exception e2) {
                    e = e2;
                    bufferedInputStream = 0;
                } catch (Throwable th2) {
                    th = th2;
                    gZIPInputStream = 0;
                    bufferedInputStream = gZIPInputStream;
                    Throwable th3 = th;
                    if (gZIPInputStream != 0) {
                    }
                    if (bufferedInputStream != 0) {
                    }
                    if (inputStreamOpen != null) {
                    }
                }
            } catch (Exception e3) {
                FileLog.m1136e(e3);
                return;
            }
        } catch (Exception e4) {
            e = e4;
            inputStreamOpen = null;
            bufferedInputStream = 0;
        } catch (Throwable th4) {
            th = th4;
            inputStreamOpen = null;
            gZIPInputStream = 0;
        }
        try {
            StreamReader streamReader = new StreamReader(bufferedInputStream);
            HashMap map = new HashMap();
            int uint8 = streamReader.readUint8();
            for (int i = 0; i < uint8; i++) {
                int uint82 = streamReader.readUint8();
                int uint83 = streamReader.readUint8();
                String[] strArr = new String[uint83];
                for (int i2 = 0; i2 < uint83; i2++) {
                    strArr[i2] = streamReader.readString();
                }
                map.put(Integer.valueOf(uint82), strArr);
            }
            int uint16 = streamReader.readUint16();
            ParsedPattern[] parsedPatternArr = new ParsedPattern[uint16];
            for (int i3 = 0; i3 < uint16; i3++) {
                parsedPatternArr[i3] = new ParsedPattern();
                int uint84 = streamReader.readUint8();
                ParsedPattern parsedPattern = parsedPatternArr[i3];
                parsedPattern.multiline = (uint84 & 1) != 0;
                parsedPattern.caseInsensitive = (uint84 & 2) != 0;
                parsedPattern.pattern = streamReader.readString();
            }
            if (compiledPatterns == null) {
                compiledPatterns = new HashMap<>();
            }
            for (int i4 = 0; i4 < uint8; i4++) {
                int uint85 = streamReader.readUint8();
                TokenPattern[] tokens = readTokens(streamReader, parsedPatternArr, map);
                String[] strArr2 = (String[]) map.get(Integer.valueOf(uint85));
                int length = strArr2.length;
                int i5 = 0;
                while (i5 < length) {
                    compiledPatterns.put(strArr2[i5], tokens);
                    i5++;
                    streamReader = streamReader;
                }
            }
            FileLog.m1133d("[CodeHighlighter] Successfully read " + uint8 + " languages, " + uint16 + " patterns in " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms from codelng.gzip");
            gZIPInputStream.close();
            bufferedInputStream.close();
            if (inputStreamOpen != null) {
                inputStreamOpen.close();
            }
        } catch (Exception e5) {
            e = e5;
            r1 = gZIPInputStream;
            bufferedInputStream = bufferedInputStream;
            try {
                FileLog.m1136e(e);
                if (r1 != 0) {
                    r1.close();
                }
                if (bufferedInputStream != 0) {
                    bufferedInputStream.close();
                }
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
            } catch (Throwable th5) {
                th = th5;
                gZIPInputStream = r1;
                Throwable th32 = th;
                if (gZIPInputStream != 0) {
                    try {
                        gZIPInputStream.close();
                    } catch (Exception e6) {
                        FileLog.m1136e(e6);
                        throw th32;
                    }
                }
                if (bufferedInputStream != 0) {
                    bufferedInputStream.close();
                }
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                    throw th32;
                }
                throw th32;
            }
        } catch (Throwable th6) {
            th = th6;
            Throwable th322 = th;
            if (gZIPInputStream != 0) {
            }
            if (bufferedInputStream != 0) {
            }
            if (inputStreamOpen != null) {
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class ParsedPattern {
        private CachedPattern cachedPattern;
        boolean caseInsensitive;
        boolean multiline;
        String pattern;

        private ParsedPattern() {
        }

        public int flags() {
            return (this.multiline ? 8 : 0) | (this.caseInsensitive ? 2 : 0);
        }

        public CachedPattern getCachedPattern() {
            if (this.cachedPattern == null) {
                this.cachedPattern = new CachedPattern(this.pattern, flags());
            }
            return this.cachedPattern;
        }
    }

    private static TokenPattern[] readTokens(StreamReader streamReader, ParsedPattern[] parsedPatternArr, HashMap<Integer, String[]> map) {
        int uint8 = streamReader.readUint8();
        TokenPattern[] tokenPatternArr = new TokenPattern[uint8];
        for (int i = 0; i < uint8; i++) {
            int uint82 = streamReader.readUint8();
            int i2 = uint82 & 3;
            int i3 = (uint82 >> 2) & 7;
            boolean z = (uint82 & 32) != 0;
            boolean z2 = (uint82 & 64) != 0;
            int uint16 = streamReader.readUint16();
            if (i2 == 0) {
                tokenPatternArr[i] = new TokenPattern(i3, parsedPatternArr[uint16].getCachedPattern());
            } else if (i2 == 1) {
                if (i3 == 0) {
                    tokenPatternArr[i] = new TokenPattern(parsedPatternArr[uint16].getCachedPattern(), readTokens(streamReader, parsedPatternArr, map));
                } else {
                    tokenPatternArr[i] = new TokenPattern(i3, parsedPatternArr[uint16].getCachedPattern(), readTokens(streamReader, parsedPatternArr, map));
                }
            } else if (i2 == 2) {
                tokenPatternArr[i] = new TokenPattern(parsedPatternArr[uint16].getCachedPattern(), map.get(Integer.valueOf(streamReader.readUint8()))[0]);
            }
            if (z) {
                tokenPatternArr[i].greedy = true;
            }
            if (z2) {
                tokenPatternArr[i].lookbehind = true;
            }
        }
        return tokenPatternArr;
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class StreamReader {

        /* JADX INFO: renamed from: is */
        private final InputStream f1581is;

        public StreamReader(InputStream inputStream) {
            this.f1581is = inputStream;
        }

        public int readUint8() {
            return this.f1581is.read() & 255;
        }

        public int readUint16() {
            return (this.f1581is.read() & 255) | ((this.f1581is.read() & 255) << 8);
        }

        public String readString() throws IOException {
            int i = this.f1581is.read();
            if (i >= 254) {
                i = this.f1581is.read() | (this.f1581is.read() << 8) | (this.f1581is.read() << 16);
            }
            byte[] bArr = new byte[i];
            for (int i2 = 0; i2 < i; i2++) {
                bArr[i2] = (byte) this.f1581is.read();
            }
            return new String(bArr, StandardCharsets.US_ASCII);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class TokenPattern {
        public boolean greedy;
        public int group;
        public String insideLanguage;
        public TokenPattern[] insideTokenPatterns;
        public boolean lookbehind;
        public final CachedPattern pattern;

        public TokenPattern(int i, CachedPattern cachedPattern) {
            this.pattern = cachedPattern;
            this.group = i;
        }

        public TokenPattern(CachedPattern cachedPattern, TokenPattern... tokenPatternArr) {
            this.group = -1;
            this.pattern = cachedPattern;
            this.insideTokenPatterns = tokenPatternArr;
        }

        public TokenPattern(CachedPattern cachedPattern, String str) {
            this.group = -1;
            this.pattern = cachedPattern;
            this.insideLanguage = str;
        }

        public TokenPattern(int i, CachedPattern cachedPattern, TokenPattern... tokenPatternArr) {
            this.group = i;
            this.pattern = cachedPattern;
            this.insideTokenPatterns = tokenPatternArr;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    private static class CachedPattern {
        private Pattern pattern;
        private String patternSource;
        private int patternSourceFlags;

        public CachedPattern(String str, int i) {
            this.patternSource = str;
            this.patternSourceFlags = i;
        }

        public Pattern getPattern() {
            if (this.pattern == null) {
                this.pattern = Pattern.compile(this.patternSource, this.patternSourceFlags);
            }
            return this.pattern;
        }
    }
}
