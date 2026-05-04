.class abstract Landroidx/core/app/NotificationCompatBuilder$Api36Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Api36Impl"
.end annotation


# direct methods
.method static setShortCriticalText(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    .line 808
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShortCriticalText(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method
