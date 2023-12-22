package com.ocean.ble;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import com.ocean.gamecamerapro2.R;
import java.io.IOException;
/* loaded from: classes.dex */
public class BeepManager {
    private static final float BEEP_VOLUME = 0.1f;
    private static final String TAG = "BeepManager";
    private static final long VIBRATE_DURATION = 200;
    private final Activity mainActivity;
    private boolean playBeep;
    private boolean vibrate = true;
    private MediaPlayer mediaPlayer = null;

    public BeepManager(Activity activity) {
        this.mainActivity = activity;
        updatePrefs();
    }

    void updatePrefs() {
        this.playBeep = shouldBeep(PreferenceManager.getDefaultSharedPreferences(this.mainActivity), this.mainActivity);
        if (this.playBeep && this.mediaPlayer == null) {
            this.mainActivity.setVolumeControlStream(3);
            this.mediaPlayer = buildMediaPlayer(this.mainActivity);
        }
    }

    public void playBeepSoundAndVibrate() {
        if (this.playBeep && this.mediaPlayer != null) {
            this.mediaPlayer.seekTo(0);
            this.mediaPlayer.start();
        }
        if (this.vibrate) {
            ((Vibrator) this.mainActivity.getSystemService("vibrator")).vibrate(VIBRATE_DURATION);
        }
    }

    private static boolean shouldBeep(SharedPreferences sharedPreferences, Context context) {
        return ((AudioManager) context.getSystemService("audio")).getRingerMode() == 2;
    }

    private static MediaPlayer buildMediaPlayer(Context context) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.ocean.ble.BeepManager.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer2) {
                mediaPlayer2.seekTo(0);
            }
        });
        AssetFileDescriptor openRawResourceFd = context.getResources().openRawResourceFd(R.raw.beep_2);
        try {
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            openRawResourceFd.close();
            mediaPlayer.setVolume(BEEP_VOLUME, BEEP_VOLUME);
            mediaPlayer.prepare();
            return mediaPlayer;
        } catch (IOException unused) {
            return null;
        }
    }
}
