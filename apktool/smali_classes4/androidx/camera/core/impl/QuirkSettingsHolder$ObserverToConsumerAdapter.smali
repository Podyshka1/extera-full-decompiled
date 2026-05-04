.class Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/QuirkSettingsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverToConsumerAdapter"
.end annotation


# instance fields
.field private final mDelegate:Landroidx/core/util/Consumer;


# direct methods
.method constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 128
    const-string v0, "ObserverToConsumerAdapter"

    const-string v1, "Unexpected error in Observable"

    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNewData(Ljava/lang/Object;)V
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Landroidx/core/util/Consumer;

    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
