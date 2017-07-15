.class Lcom/miniclip/input/MCKeyboard$16$1;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMax:I

.field final synthetic this$0:Lcom/miniclip/input/MCKeyboard$16;


# direct methods
.method constructor <init>(Lcom/miniclip/input/MCKeyboard$16;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miniclip/input/MCKeyboard$16;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/miniclip/input/MCKeyboard$16$1;->this$0:Lcom/miniclip/input/MCKeyboard$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iget-object v0, p0, Lcom/miniclip/input/MCKeyboard$16$1;->this$0:Lcom/miniclip/input/MCKeyboard$16;

    iget v0, v0, Lcom/miniclip/input/MCKeyboard$16;->val$maxLength:I

    iput v0, p0, Lcom/miniclip/input/MCKeyboard$16$1;->mMax:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, "length":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 393
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_3

    .line 399
    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 400
    add-int/lit8 v1, v1, 0x1

    .line 398
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 404
    :cond_3
    move v0, p6

    :goto_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 405
    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 406
    add-int/lit8 v1, v1, 0x1

    .line 404
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 411
    :cond_5
    iget v2, p0, Lcom/miniclip/input/MCKeyboard$16$1;->mMax:I

    if-gt v1, v2, :cond_6

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_6
    const-string v2, ""

    goto :goto_3
.end method
