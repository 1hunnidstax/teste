.class Lcom/miniclip/nativeJNI/cocojava$9$1;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/cocojava$9;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/cocojava$9;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/cocojava$9;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$9$1;->this$0:Lcom/miniclip/nativeJNI/cocojava$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public onComplete()V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method
