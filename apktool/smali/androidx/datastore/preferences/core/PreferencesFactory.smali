.class public abstract Landroidx/datastore/preferences/core/PreferencesFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createEmpty()Landroidx/datastore/preferences/core/Preferences;
    .locals 3

    .line 29
    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v1}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final varargs createMutable([Landroidx/datastore/preferences/core/Preferences$Pair;)Landroidx/datastore/preferences/core/MutablePreferences;
    .locals 4

    const-string/jumbo v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/datastore/preferences/core/Preferences$Pair;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->putAll([Landroidx/datastore/preferences/core/Preferences$Pair;)V

    return-object v0
.end method
