.class final Lcom/miniclip/input/MCKeyboard$16;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->setKeyboardInputMaxLength(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 382
    iput p1, p0, Lcom/miniclip/input/MCKeyboard$16;->val$maxLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 384
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 385
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/miniclip/input/MCKeyboard$16$1;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$16$1;-><init>(Lcom/miniclip/input/MCKeyboard$16;)V

    aput-object v2, v0, v1

    .line 414
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 415
    return-void
.end method
