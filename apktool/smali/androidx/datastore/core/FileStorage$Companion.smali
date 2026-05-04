.class public final Landroidx/datastore/core/FileStorage$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/FileStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/datastore/core/FileStorage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveFiles$datastore_core_release()Ljava/util/Set;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/datastore/core/FileStorage;->access$getActiveFiles$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getActiveFilesLock$datastore_core_release()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-static {}, Landroidx/datastore/core/FileStorage;->access$getActiveFilesLock$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
