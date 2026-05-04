.class public abstract Landroidx/lifecycle/viewmodel/CreationExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/viewmodel/CreationExtras$Companion;,
        Landroidx/lifecycle/viewmodel/CreationExtras$Empty;,
        Landroidx/lifecycle/viewmodel/CreationExtras$Key;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/viewmodel/CreationExtras$Companion;


# instance fields
.field private final extras:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/viewmodel/CreationExtras$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/viewmodel/CreationExtras$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/viewmodel/CreationExtras;->Companion:Landroidx/lifecycle/viewmodel/CreationExtras$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 54
    instance-of v0, p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    iget-object p1, p1, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;
.end method

.method public final getExtras$lifecycle_viewmodel()Ljava/util/Map;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreationExtras(extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/lifecycle/viewmodel/CreationExtras;->extras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
