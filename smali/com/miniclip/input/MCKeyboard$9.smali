.class final Lcom/miniclip/input/MCKeyboard$9;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->setKeyboardInputStyle(IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$background:I

.field final synthetic val$size:F

.field final synthetic val$text:I


# direct methods
.method constructor <init>(IIF)V
    .locals 0

    .prologue
    .line 302
    iput p1, p0, Lcom/miniclip/input/MCKeyboard$9;->val$background:I

    iput p2, p0, Lcom/miniclip/input/MCKeyboard$9;->val$text:I

    iput p3, p0, Lcom/miniclip/input/MCKeyboard$9;->val$size:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/miniclip/input/MCKeyboard$9;->val$background:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 305
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/miniclip/input/MCKeyboard$9;->val$text:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 306
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/miniclip/input/MCKeyboard$9;->val$size:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 307
    return-void
.end method
