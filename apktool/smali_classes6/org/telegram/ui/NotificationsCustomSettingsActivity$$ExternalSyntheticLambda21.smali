.class public final synthetic Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    return-void
.end method


# virtual methods
.method public final didCreateNewException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->$r8$lambda$D4qKvV9dohXEPXvX_omt9atYvPs(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;)V

    return-void
.end method

.method public synthetic didRemoveException(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate$-CC;->$default$didRemoveException(Lorg/telegram/ui/ProfileNotificationsActivity$ProfileNotificationsActivityDelegate;J)V

    return-void
.end method
