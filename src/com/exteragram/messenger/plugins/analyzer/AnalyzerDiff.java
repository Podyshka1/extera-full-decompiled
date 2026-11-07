package com.exteragram.messenger.plugins.analyzer;

import com.exteragram.messenger.plugins.analyzer.AnalyzerReport;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff;", _UrlKt.FRAGMENT_ENCODE_SET, "newStatements", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Statement;", "newFindings", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Finding;", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getNewStatements", "()Ljava/util/List;", "getNewFindings", "isEmpty", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class AnalyzerDiff {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<AnalyzerReport.Finding> newFindings;
    private final List<AnalyzerReport.Statement> newStatements;

    public AnalyzerDiff(List<AnalyzerReport.Statement> list, List<AnalyzerReport.Finding> list2) {
        this.newStatements = list;
        this.newFindings = list2;
    }

    public final List<AnalyzerReport.Statement> getNewStatements() {
        return this.newStatements;
    }

    public final List<AnalyzerReport.Finding> getNewFindings() {
        return this.newFindings;
    }

    public final boolean isEmpty() {
        return this.newStatements.isEmpty() && this.newFindings.isEmpty();
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "parse", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff;", "json", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAnalyzerReport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerDiff$Companion\n+ 2 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReportKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n228#2,7:243\n228#2,7:252\n1033#3,2:250\n*S KotlinDebug\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerDiff$Companion\n*L\n218#1:243,7\n221#1:252,7\n219#1:250,2\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AnalyzerDiff parse(String json) {
            JSONObject jSONObject = new JSONObject(json);
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("new_statements");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        arrayList.add(AnalyzerReport.INSTANCE.parseStatement$TMessagesProj(jSONObjectOptJSONObject));
                    }
                }
            }
            if (arrayList.size() > 1) {
                CollectionsKt.sortWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.plugins.analyzer.AnalyzerDiff$Companion$parse$$inlined$sortByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Integer.valueOf(((AnalyzerReport.Statement) t2).getSeverity()), Integer.valueOf(((AnalyzerReport.Statement) t).getSeverity()));
                    }
                });
            }
            ArrayList arrayList2 = new ArrayList();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("new_findings");
            if (jSONArrayOptJSONArray2 != null) {
                int length2 = jSONArrayOptJSONArray2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i2);
                    if (jSONObjectOptJSONObject2 != null) {
                        arrayList2.add(AnalyzerReport.INSTANCE.parseFinding$TMessagesProj(jSONObjectOptJSONObject2));
                    }
                }
            }
            return new AnalyzerDiff(arrayList, arrayList2);
        }
    }
}
