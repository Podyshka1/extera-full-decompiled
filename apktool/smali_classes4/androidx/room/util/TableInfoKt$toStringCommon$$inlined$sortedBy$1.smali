.class public final Landroidx/room/util/TableInfoKt$toStringCommon$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/util/TableInfoKt;->toStringCommon(Landroidx/room/util/TableInfo;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 102
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    .line 192
    iget-object p1, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 102
    check-cast p2, Landroidx/room/util/TableInfo$Column;

    .line 192
    iget-object p2, p2, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 102
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
