.class public final synthetic Lorg/telegram/ui/Components/StickersDialogs$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersDialogs$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersDialogs$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersDialogs;->$r8$lambda$53Wx5EDwOzT1cKuG1CMoQDiyqi0(Lorg/telegram/ui/Components/EditTextBoldCursor;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
