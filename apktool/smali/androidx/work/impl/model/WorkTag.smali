.class public final Landroidx/work/impl/model/WorkTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final tag:Ljava/lang/String;

.field private final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workSpecId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkSpecId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    return-object v0
.end method
