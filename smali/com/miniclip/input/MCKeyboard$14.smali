.class final Lcom/miniclip/input/MCKeyboard$14;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->setKeyboardInputSingleLine(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$singleLine:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lcom/miniclip/input/MCKeyboard$14;->val$singleLine:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 361
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Lcom/miniclip/input/MCKeyboard$14;->val$singleLine:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 362
    return-void

    .line 361
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method
