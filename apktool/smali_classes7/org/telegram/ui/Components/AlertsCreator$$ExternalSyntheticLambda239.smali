.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda239;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda239;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda239;->f$1:Lorg/telegram/ui/Components/NumberPicker;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda239;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda239;->f$1:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$sS1_1HI3a4kyNE9tFW55VcBvfPE(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/NumberPicker;Landroid/content/DialogInterface;)V

    return-void
.end method
