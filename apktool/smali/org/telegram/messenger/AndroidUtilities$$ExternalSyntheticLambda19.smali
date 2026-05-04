.class public final synthetic Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback0Return;


# instance fields
.field public final synthetic f$0:Landroid/text/SpannableStringBuilder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/text/SpannableStringBuilder;IZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$0:Landroid/text/SpannableStringBuilder;

    iput p2, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$0:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda19;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->$r8$lambda$j1yJYdY1K3Qj4aTXou-J67JX5Gw(Landroid/text/SpannableStringBuilder;IZZ)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
