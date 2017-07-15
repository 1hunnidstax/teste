.class Lcom/miniclip/nativeJNI/GooglePlayServices$7;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$7;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->MGooglePlusShowOverlayCallback(Ljava/lang/Boolean;)V

    .line 811
    return-void
.end method
