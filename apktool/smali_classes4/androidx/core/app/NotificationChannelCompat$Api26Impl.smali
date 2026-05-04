.class abstract Landroidx/core/app/NotificationChannelCompat$Api26Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method static createNotificationChannel(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;
    .locals 1

    .line 516
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method static enableLights(Landroid/app/NotificationChannel;Z)V
    .locals 0

    .line 573
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    return-void
.end method

.method static enableVibration(Landroid/app/NotificationChannel;Z)V
    .locals 0

    .line 589
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-void
.end method

.method static setDescription(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    .line 536
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static setGroup(Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 0

    .line 544
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    return-void
.end method

.method static setLightColor(Landroid/app/NotificationChannel;I)V
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    return-void
.end method

.method static setShowBadge(Landroid/app/NotificationChannel;Z)V
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    return-void
.end method

.method static setSound(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    .locals 0

    .line 561
    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method static setVibrationPattern(Landroid/app/NotificationChannel;[J)V
    .locals 0

    .line 598
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    return-void
.end method
