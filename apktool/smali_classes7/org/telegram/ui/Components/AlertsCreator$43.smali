.class Lorg/telegram/ui/Components/AlertsCreator$43;
.super Lorg/telegram/ui/Components/NumberPicker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createAutoDeleteDatePickerDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[I)V
    .locals 0

    .line 5342
    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$43;->val$values:[I

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected getContentDescription(I)Ljava/lang/CharSequence;
    .locals 3

    .line 5345
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$43;->val$values:[I

    aget p1, v0, p1

    if-nez p1, :cond_0

    .line 5346
    sget p1, Lorg/telegram/messenger/R$string;->AutoDeleteNever:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x2760

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 5348
    div-int/lit16 p1, p1, 0x5a0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Days"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const v2, 0xae60

    if-ge p1, v2, :cond_2

    .line 5350
    div-int/lit16 p1, p1, 0x5a0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Weeks"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const v2, 0x80520

    if-ge p1, v2, :cond_3

    .line 5352
    div-int/2addr p1, v0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Months"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    mul-int/lit8 p1, p1, 0x5

    .line 5354
    div-int/lit8 p1, p1, 0x1f

    mul-int/lit16 p1, p1, 0x5a0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Years"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
