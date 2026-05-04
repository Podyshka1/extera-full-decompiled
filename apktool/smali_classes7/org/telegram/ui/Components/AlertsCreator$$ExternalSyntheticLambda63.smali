.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([IILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;->f$0:[I

    iput p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;->f$0:[I

    iget v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda63;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$OhHnZyFk2ZA5sJVylpz6nuJ7t1M([IILjava/lang/Runnable;)V

    return-void
.end method
