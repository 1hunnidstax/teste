.class Lcom/miniclip/nativeJNI/cocojava$1;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava;->loadNativeLibrary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/cocojava;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/cocojava;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/cocojava;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$1;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/miniclip/nativeJNI/cocojava;->displayLowStorageMessage(I)V

    .line 146
    return-void
.end method
