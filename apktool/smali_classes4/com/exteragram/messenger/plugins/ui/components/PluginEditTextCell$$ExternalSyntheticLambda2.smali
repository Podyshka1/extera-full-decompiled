.class public final synthetic Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic f$0:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda2;->f$0:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell$$ExternalSyntheticLambda2;->f$0:Ljava/util/regex/Pattern;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/exteragram/messenger/plugins/ui/components/PluginEditTextCell;->$r8$lambda$21LFMD-bklwashUcrD_hg0JMOJw(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
