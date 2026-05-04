package androidx.room.util;

import androidx.room.util.TableInfo;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TableInfoKt {
    public static final boolean equalsCommon(TableInfo tableInfo, Object obj) {
        Set set;
        Intrinsics.checkNotNullParameter(tableInfo, "<this>");
        if (tableInfo == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo)) {
            return false;
        }
        TableInfo tableInfo2 = (TableInfo) obj;
        if (!Intrinsics.areEqual(tableInfo.name, tableInfo2.name) || !Intrinsics.areEqual(tableInfo.columns, tableInfo2.columns) || !Intrinsics.areEqual(tableInfo.foreignKeys, tableInfo2.foreignKeys)) {
            return false;
        }
        Set set2 = tableInfo.indices;
        if (set2 == null || (set = tableInfo2.indices) == null) {
            return true;
        }
        return Intrinsics.areEqual(set2, set);
    }

    public static final int hashCodeCommon(TableInfo tableInfo) {
        Intrinsics.checkNotNullParameter(tableInfo, "<this>");
        return (((tableInfo.name.hashCode() * 31) + tableInfo.columns.hashCode()) * 31) + tableInfo.foreignKeys.hashCode();
    }

    public static final String toStringCommon(TableInfo tableInfo) {
        List listEmptyList;
        Intrinsics.checkNotNullParameter(tableInfo, "<this>");
        StringBuilder sb = new StringBuilder();
        sb.append("\n            |TableInfo {\n            |    name = '");
        sb.append(tableInfo.name);
        sb.append("',\n            |    columns = {");
        sb.append(formatString(CollectionsKt.sortedWith(tableInfo.columns.values(), new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.compareValues(((TableInfo.Column) obj).name, ((TableInfo.Column) obj2).name);
            }
        })));
        sb.append("\n            |    foreignKeys = {");
        sb.append(formatString(tableInfo.foreignKeys));
        sb.append("\n            |    indices = {");
        Set set = tableInfo.indices;
        if (set == null || (listEmptyList = CollectionsKt.sortedWith(set, new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.compareValues(((TableInfo.Index) obj).name, ((TableInfo.Index) obj2).name);
            }
        })) == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        sb.append(formatString(listEmptyList));
        sb.append("\n            |}\n        ");
        return StringsKt.trimMargin$default(sb.toString(), null, 1, null);
    }

    public static final boolean equalsCommon(TableInfo.Column column, Object obj) {
        Intrinsics.checkNotNullParameter(column, "<this>");
        if (column == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo.Column)) {
            return false;
        }
        TableInfo.Column column2 = (TableInfo.Column) obj;
        if (column.isPrimaryKey() != column2.isPrimaryKey() || !Intrinsics.areEqual(column.name, column2.name) || column.notNull != column2.notNull) {
            return false;
        }
        String str = column.defaultValue;
        String str2 = column2.defaultValue;
        if (column.createdFrom == 1 && column2.createdFrom == 2 && str != null && !defaultValueEqualsCommon(str, str2)) {
            return false;
        }
        if (column.createdFrom == 2 && column2.createdFrom == 1 && str2 != null && !defaultValueEqualsCommon(str2, str)) {
            return false;
        }
        int i = column.createdFrom;
        return (i == 0 || i != column2.createdFrom || (str == null ? str2 == null : defaultValueEqualsCommon(str, str2))) && column.affinity == column2.affinity;
    }

    public static final boolean defaultValueEqualsCommon(String current, String str) {
        Intrinsics.checkNotNullParameter(current, "current");
        if (Intrinsics.areEqual(current, str)) {
            return true;
        }
        if (!containsSurroundingParenthesis(current)) {
            return false;
        }
        String strSubstring = current.substring(1, current.length() - 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return Intrinsics.areEqual(StringsKt.trim(strSubstring).toString(), str);
    }

    private static final boolean containsSurroundingParenthesis(String str) {
        if (str.length() == 0) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            int i4 = i3 + 1;
            if (i3 == 0 && cCharAt != '(') {
                return false;
            }
            if (cCharAt == '(') {
                i2++;
            } else if (cCharAt == ')' && i2 - 1 == 0 && i3 != str.length() - 1) {
                return false;
            }
            i++;
            i3 = i4;
        }
        return i2 == 0;
    }

    public static final int hashCodeCommon(TableInfo.Column column) {
        Intrinsics.checkNotNullParameter(column, "<this>");
        return (((((column.name.hashCode() * 31) + column.affinity) * 31) + (column.notNull ? 1231 : 1237)) * 31) + column.primaryKeyPosition;
    }

    public static final String toStringCommon(TableInfo.Column column) {
        Intrinsics.checkNotNullParameter(column, "<this>");
        StringBuilder sb = new StringBuilder();
        sb.append("\n            |Column {\n            |   name = '");
        sb.append(column.name);
        sb.append("',\n            |   type = '");
        sb.append(column.type);
        sb.append("',\n            |   affinity = '");
        sb.append(column.affinity);
        sb.append("',\n            |   notNull = '");
        sb.append(column.notNull);
        sb.append("',\n            |   primaryKeyPosition = '");
        sb.append(column.primaryKeyPosition);
        sb.append("',\n            |   defaultValue = '");
        String str = column.defaultValue;
        if (str == null) {
            str = "undefined";
        }
        sb.append(str);
        sb.append("'\n            |}\n        ");
        return StringsKt.prependIndent$default(StringsKt.trimMargin$default(sb.toString(), null, 1, null), null, 1, null);
    }

    public static final boolean equalsCommon(TableInfo.ForeignKey foreignKey, Object obj) {
        Intrinsics.checkNotNullParameter(foreignKey, "<this>");
        if (foreignKey == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo.ForeignKey)) {
            return false;
        }
        TableInfo.ForeignKey foreignKey2 = (TableInfo.ForeignKey) obj;
        if (Intrinsics.areEqual(foreignKey.referenceTable, foreignKey2.referenceTable) && Intrinsics.areEqual(foreignKey.onDelete, foreignKey2.onDelete) && Intrinsics.areEqual(foreignKey.onUpdate, foreignKey2.onUpdate) && Intrinsics.areEqual(foreignKey.columnNames, foreignKey2.columnNames)) {
            return Intrinsics.areEqual(foreignKey.referenceColumnNames, foreignKey2.referenceColumnNames);
        }
        return false;
    }

    public static final int hashCodeCommon(TableInfo.ForeignKey foreignKey) {
        Intrinsics.checkNotNullParameter(foreignKey, "<this>");
        return (((((((foreignKey.referenceTable.hashCode() * 31) + foreignKey.onDelete.hashCode()) * 31) + foreignKey.onUpdate.hashCode()) * 31) + foreignKey.columnNames.hashCode()) * 31) + foreignKey.referenceColumnNames.hashCode();
    }

    public static final String toStringCommon(TableInfo.ForeignKey foreignKey) {
        Intrinsics.checkNotNullParameter(foreignKey, "<this>");
        return StringsKt.prependIndent$default(StringsKt.trimMargin$default("\n            |ForeignKey {\n            |   referenceTable = '" + foreignKey.referenceTable + "',\n            |   onDelete = '" + foreignKey.onDelete + "',\n            |   onUpdate = '" + foreignKey.onUpdate + "',\n            |   columnNames = {" + joinToStringMiddleWithIndent(CollectionsKt.sorted(foreignKey.columnNames)) + "\n            |   referenceColumnNames = {" + joinToStringEndWithIndent(CollectionsKt.sorted(foreignKey.referenceColumnNames)) + "\n            |}\n        ", null, 1, null), null, 1, null);
    }

    public static final boolean equalsCommon(TableInfo.Index index, Object obj) {
        Intrinsics.checkNotNullParameter(index, "<this>");
        if (index == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo.Index)) {
            return false;
        }
        TableInfo.Index index2 = (TableInfo.Index) obj;
        if (index.unique != index2.unique || !Intrinsics.areEqual(index.columns, index2.columns) || !Intrinsics.areEqual(index.orders, index2.orders)) {
            return false;
        }
        if (StringsKt.startsWith$default(index.name, "index_", false, 2, (Object) null)) {
            return StringsKt.startsWith$default(index2.name, "index_", false, 2, (Object) null);
        }
        return Intrinsics.areEqual(index.name, index2.name);
    }

    public static final int hashCodeCommon(TableInfo.Index index) {
        Intrinsics.checkNotNullParameter(index, "<this>");
        return ((((((StringsKt.startsWith$default(index.name, "index_", false, 2, (Object) null) ? -1184239155 : index.name.hashCode()) * 31) + (index.unique ? 1 : 0)) * 31) + index.columns.hashCode()) * 31) + index.orders.hashCode();
    }

    public static final String toStringCommon(TableInfo.Index index) {
        Intrinsics.checkNotNullParameter(index, "<this>");
        return StringsKt.prependIndent$default(StringsKt.trimMargin$default("\n            |Index {\n            |   name = '" + index.name + "',\n            |   unique = '" + index.unique + "',\n            |   columns = {" + joinToStringMiddleWithIndent(index.columns) + "\n            |   orders = {" + joinToStringEndWithIndent(index.orders) + "\n            |}\n        ", null, 1, null), null, 1, null);
    }

    public static final String formatString(Collection collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (!collection.isEmpty()) {
            return StringsKt.prependIndent$default(CollectionsKt.joinToString$default(collection, ",\n", "\n", "\n", 0, null, null, 56, null), null, 1, null) + "},";
        }
        return " }";
    }

    private static final String joinToStringMiddleWithIndent(Collection collection) {
        return StringsKt.prependIndent$default(CollectionsKt.joinToString$default(collection, ",", null, null, 0, null, null, 62, null), null, 1, null) + StringsKt.prependIndent$default("},", null, 1, null);
    }

    private static final String joinToStringEndWithIndent(Collection collection) {
        return StringsKt.prependIndent$default(CollectionsKt.joinToString$default(collection, ",", null, null, 0, null, null, 62, null), null, 1, null) + StringsKt.prependIndent$default(" }", null, 1, null);
    }
}
