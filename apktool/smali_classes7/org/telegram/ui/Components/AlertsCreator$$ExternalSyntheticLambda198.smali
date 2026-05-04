.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda198;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda198;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda198;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda198;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda198;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$rC8-I1HHpwZB4w4-UFRsVxvbbAY(Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
