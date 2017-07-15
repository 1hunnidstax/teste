.class public abstract Lcom/miniclip/framework/AbstractActivityListener;
.super Ljava/lang/Object;
.source "AbstractActivityListener.java"

# interfaces
.implements Lcom/miniclip/framework/ActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 59
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 47
    return-void
.end method
