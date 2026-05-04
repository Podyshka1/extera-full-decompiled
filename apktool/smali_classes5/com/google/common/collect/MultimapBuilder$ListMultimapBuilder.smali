.class public abstract Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.super Lcom/google/common/collect/MultimapBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListMultimapBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 434
    invoke-direct {p0, v0}, Lcom/google/common/collect/MultimapBuilder;-><init>(Lcom/google/common/collect/MultimapBuilder$1;)V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/common/collect/ListMultimap;
.end method
