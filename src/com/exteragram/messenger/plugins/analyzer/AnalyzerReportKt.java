package com.exteragram.messenger.plugins.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u001a#\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0082\b\u001a\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u0004\u0018\u00010\u0002H\u0002¨\u0006\t"}, d2 = {"forEachObject", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/json/JSONArray;", "action", "Lkotlin/Function1;", "Lorg/json/JSONObject;", "strings", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAnalyzerReport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReportKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1642#2,10:243\n1915#2:253\n1916#2:256\n1652#2:257\n1#3:254\n1#3:255\n*S KotlinDebug\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReportKt\n*L\n240#1:243,10\n240#1:253\n240#1:256\n240#1:257\n240#1:255\n*E\n"})
public final class AnalyzerReportKt {
    private static final void forEachObject(JSONArray jSONArray, Function1<? super JSONObject, Unit> function1) {
        if (jSONArray == null) {
            return;
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null) {
                function1.invoke(jSONObjectOptJSONObject);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<String> strings(JSONArray jSONArray) {
        if (jSONArray == null) {
            return CollectionsKt.emptyList();
        }
        IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            String strOptString = jSONArray.optString(((IntIterator) it).nextInt());
            if (strOptString.length() <= 0) {
                strOptString = null;
            }
            if (strOptString != null) {
                arrayList.add(strOptString);
            }
        }
        return arrayList;
    }
}
