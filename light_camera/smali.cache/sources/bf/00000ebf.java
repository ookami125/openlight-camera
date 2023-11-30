package openlight.co.thermalmonitor;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface IThermalMonitorService extends IInterface {
    String getCurrentLevel() throws RemoteException;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static abstract class Stub extends Binder implements IThermalMonitorService {
        private static final String DESCRIPTOR = "openlight.co.thermalmonitor.IThermalMonitorService";
        static final int TRANSACTION_getCurrentLevel = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IThermalMonitorService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IThermalMonitorService)) {
                return (IThermalMonitorService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            String currentLevel = getCurrentLevel();
            parcel2.writeNoException();
            parcel2.writeString(currentLevel);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /tmp/jadx-11175800792829446388.dex */
        public static class Proxy implements IThermalMonitorService {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // openlight.co.thermalmonitor.IThermalMonitorService
            public String getCurrentLevel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}