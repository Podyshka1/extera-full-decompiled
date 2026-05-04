.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/ui/TopicsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;JJZLorg/telegram/ui/TopicsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-wide p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$1:J

    iput-wide p4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$2:J

    iput-boolean p6, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$3:Z

    iput-object p7, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$4:Lorg/telegram/ui/TopicsFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-wide v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$1:J

    iget-wide v3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$2:J

    iget-boolean v5, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$3:Z

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda26;->f$4:Lorg/telegram/ui/TopicsFragment;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$8wcSE4qSetDv6f73Qbc_RamzgTA(Lorg/telegram/ui/DialogsActivity;JJZLorg/telegram/ui/TopicsFragment;)V

    return-void
.end method
