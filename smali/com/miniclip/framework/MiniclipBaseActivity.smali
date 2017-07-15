.class public abstract Lcom/miniclip/framework/MiniclipBaseActivity;
.super Landroid/app/Activity;
.source "MiniclipBaseActivity.java"

# interfaces
.implements Lcom/miniclip/framework/MiniclipFacilitator;


# instance fields
.field private activityListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/miniclip/framework/ActivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/miniclip/framework/ActivityListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/miniclip/framework/ActivityListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 132
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/miniclip/framework/ActivityListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 134
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {p0}, Lcom/miniclip/framework/Miniclip;->setFacilitator(Lcom/miniclip/framework/MiniclipFacilitator;)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 84
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onDestroy()V

    goto :goto_0

    .line 86
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 156
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onLowMemory()V

    goto :goto_0

    .line 158
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 159
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 140
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0, p1}, Lcom/miniclip/framework/ActivityListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 100
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onPause()V

    goto :goto_0

    .line 102
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 172
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/miniclip/framework/ActivityListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 174
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 175
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 124
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onRestart()V

    goto :goto_0

    .line 126
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 92
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onResume()V

    goto :goto_0

    .line 94
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 164
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0, p1}, Lcom/miniclip/framework/ActivityListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 108
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onStart()V

    goto :goto_0

    .line 110
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 111
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 116
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0}, Lcom/miniclip/framework/ActivityListener;->onStop()V

    goto :goto_0

    .line 118
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 119
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/framework/ActivityListener;

    .line 148
    .local v0, "listener":Lcom/miniclip/framework/ActivityListener;
    invoke-interface {v0, p1}, Lcom/miniclip/framework/ActivityListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 150
    .end local v0    # "listener":Lcom/miniclip/framework/ActivityListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 151
    return-void
.end method

.method public queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "threadingContext"    # Lcom/miniclip/framework/ThreadingContext;
    .param p2, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    sget-object v0, Lcom/miniclip/framework/MiniclipBaseActivity$1;->$SwitchMap$com$miniclip$framework$ThreadingContext:[I

    invoke-virtual {p1}, Lcom/miniclip/framework/ThreadingContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    invoke-virtual {p0, p2}, Lcom/miniclip/framework/MiniclipBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 74
    :goto_0
    return-void

    .line 67
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/miniclip/framework/MiniclipBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lcom/miniclip/framework/ActivityListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/miniclip/framework/ActivityListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miniclip/framework/MiniclipBaseActivity;->activityListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
