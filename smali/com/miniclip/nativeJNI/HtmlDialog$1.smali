.class Lcom/miniclip/nativeJNI/HtmlDialog$1;
.super Ljava/lang/Object;
.source "HtmlDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/HtmlDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/HtmlDialog;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/HtmlDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/HtmlDialog;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miniclip/nativeJNI/HtmlDialog$1;->this$0:Lcom/miniclip/nativeJNI/HtmlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miniclip/nativeJNI/HtmlDialog$1;->this$0:Lcom/miniclip/nativeJNI/HtmlDialog;

    # getter for: Lcom/miniclip/nativeJNI/HtmlDialog;->mListener:Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;
    invoke-static {v0}, Lcom/miniclip/nativeJNI/HtmlDialog;->access$000(Lcom/miniclip/nativeJNI/HtmlDialog;)Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/miniclip/nativeJNI/HtmlDialog$1;->this$0:Lcom/miniclip/nativeJNI/HtmlDialog;

    # getter for: Lcom/miniclip/nativeJNI/HtmlDialog;->mListener:Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;
    invoke-static {v0}, Lcom/miniclip/nativeJNI/HtmlDialog;->access$000(Lcom/miniclip/nativeJNI/HtmlDialog;)Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;->onCancel()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/miniclip/nativeJNI/HtmlDialog$1;->this$0:Lcom/miniclip/nativeJNI/HtmlDialog;

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/HtmlDialog;->dismiss()V

    .line 115
    return-void
.end method
